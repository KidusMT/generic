require 'rails_helper'

RSpec.describe "ClockTimes", type: :request do
  describe "GET /clock_times" do
    it "works! (now write some real specs)" do
      get clock_times_path
      expect(response).to have_http_status(200)
    end
  end
end
