require 'rails_helper'

RSpec.describe "Rescuecompts", :type => :request do
  describe "GET /rescuecompts" do
    it "works! (now write some real specs)" do
      get rescuecompts_path
      expect(response).to have_http_status(200)
    end
  end
end
