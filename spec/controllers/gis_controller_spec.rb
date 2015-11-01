require 'rails_helper'

RSpec.describe GisController, :type => :controller do

  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show2" do
    it "returns http success" do
      get :show2
      expect(response).to have_http_status(:success)
    end
  end

end
