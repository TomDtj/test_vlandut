require "rails_helper"

RSpec.describe ProductNewsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_news").to route_to("product_news#index")
    end

    it "routes to #new" do
      expect(:get => "/product_news/new").to route_to("product_news#new")
    end

    it "routes to #show" do
      expect(:get => "/product_news/1").to route_to("product_news#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_news/1/edit").to route_to("product_news#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_news").to route_to("product_news#create")
    end

    it "routes to #update" do
      expect(:put => "/product_news/1").to route_to("product_news#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_news/1").to route_to("product_news#destroy", :id => "1")
    end

  end
end
