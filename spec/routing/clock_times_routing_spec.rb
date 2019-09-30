require "rails_helper"

RSpec.describe ClockTimesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/clock_times").to route_to("clock_times#index")
    end

    it "routes to #show" do
      expect(:get => "/clock_times/1").to route_to("clock_times#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/clock_times").to route_to("clock_times#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/clock_times/1").to route_to("clock_times#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/clock_times/1").to route_to("clock_times#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clock_times/1").to route_to("clock_times#destroy", :id => "1")
    end
  end
end
