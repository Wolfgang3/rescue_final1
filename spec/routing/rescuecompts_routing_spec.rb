require "rails_helper"

RSpec.describe RescuecomptsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rescuecompts").to route_to("rescuecompts#index")
    end

    it "routes to #new" do
      expect(:get => "/rescuecompts/new").to route_to("rescuecompts#new")
    end

    it "routes to #show" do
      expect(:get => "/rescuecompts/1").to route_to("rescuecompts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rescuecompts/1/edit").to route_to("rescuecompts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rescuecompts").to route_to("rescuecompts#create")
    end

    it "routes to #update" do
      expect(:put => "/rescuecompts/1").to route_to("rescuecompts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rescuecompts/1").to route_to("rescuecompts#destroy", :id => "1")
    end

  end
end
