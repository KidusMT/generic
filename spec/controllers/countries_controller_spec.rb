require 'rails_helper'

RSpec.describe CountriesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Country. As you add validations to Country, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      code: FFaker::Name.name,
      name: FFaker::Name.name
    }
  }

  let(:invalid_attributes) {
    {
      code: FFaker::Name.name,
      name: nil
    }
  }
  

  describe "GET #index" do
    it "returns a success response" do
      create(:country)
      
      get :index
      
      expect(response).to be_successful
    end
    
    it 'should return a list of countries' do
      3.times { create(:country) }
      
      get :index
      
      result = JSON(response.body)
      expect(result.count).to eq 3
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      country = Country.create! valid_attributes
      get :show, params: { id: country.id }
      expect(response).to be_successful
    end
    
    
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Country" do
        expect {
          post :create, params: {country: valid_attributes}
        }.to change(Country, :count).by(1)
      end

      it "renders a JSON response with the new country" do

        post :create, params: {country: valid_attributes}
        expect(response).to have_http_status(:created)
        expect(response.location).to eq(country_url(Country.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new country" do

        post :create, params: {country: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: FFaker::Name.name }
      }

      it "updates the requested country" do
        country = create(:country)
        put :update, params: { id: country.to_param, country: new_attributes }
        country.reload
        expect(country.name).to eq new_attributes[:name]
      end

      it "renders a JSON response with the country" do
        country = Country.create! valid_attributes

        put :update, params: {id: country.to_param, country: valid_attributes}
        expect(response).to have_http_status(:ok)
      end
    end
    
    describe 'POST #update_or_create' do
      it 'should create if country does not exist' do
        country = {
          code: 'xxx',
          name: 'yyy'
        }
        
        post :update_or_create, params: { country: country }
        expect(Country.count).to eq 1
      end
      
      it 'should update if country already exists' do
        c = create(:country)
        country = {
          code: c.code,
          name: 'zzz'
        }
        
        post :update_or_create, params: { country: country }
        result = JSON(response.body)
        expect(result['success']).to be_truthy
        expect(result['data']['name']).to eq 'zzz'
        expect(Country.count).to eq 1
      end
    end
    

    context "with invalid params" do
      it "renders a JSON response with errors for the country" do
        country = Country.create! valid_attributes

        put :update, params: {id: country.to_param, country: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested country" do
      country = Country.create! valid_attributes
      expect {
        delete :destroy, params: {id: country.to_param}
      }.to change(Country, :count).by(-1)
    end
  end

end
