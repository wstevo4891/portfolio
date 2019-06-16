require "rails_helper"

RSpec.describe ExhibitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exhibits").to route_to("exhibits#index")
    end

    it "routes to #new" do
      expect(:get => "/exhibits/new").to route_to("exhibits#new")
    end

    it "routes to #show" do
      expect(:get => "/exhibits/1").to route_to("exhibits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exhibits/1/edit").to route_to("exhibits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exhibits").to route_to("exhibits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exhibits/1").to route_to("exhibits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exhibits/1").to route_to("exhibits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exhibits/1").to route_to("exhibits#destroy", :id => "1")
    end

  end
end
