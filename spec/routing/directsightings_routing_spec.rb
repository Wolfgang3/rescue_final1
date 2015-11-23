require "rails_helper"

RSpec.describe DirectsightingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/directsightings").to route_to("directsightings#index")
    end

    it "routes to #new" do
      expect(:get => "/directsightings/new").to route_to("directsightings#new")
    end

    it "routes to #show" do
      expect(:get => "/directsightings/1").to route_to("directsightings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/directsightings/1/edit").to route_to("directsightings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/directsightings").to route_to("directsightings#create")
    end

    it "routes to #update" do
      expect(:put => "/directsightings/1").to route_to("directsightings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/directsightings/1").to route_to("directsightings#destroy", :id => "1")
    end

  end
end
