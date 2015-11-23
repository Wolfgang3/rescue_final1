require 'rails_helper'

RSpec.describe "Directsightings", :type => :request do
  describe "GET /directsightings" do
    it "works! (now write some real specs)" do
      get directsightings_path
      expect(response).to have_http_status(200)
    end
  end
end
