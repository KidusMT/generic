require 'rails_helper'

RSpec.describe Crew, type: :model do
  it 'has a valid factory' do
    expect(create(:crew)).to be_valid
  end
  
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:clock_times) }
end
