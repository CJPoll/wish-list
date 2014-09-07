require "rails_helper"

RSpec.describe GiftIdeasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gift_ideas").to route_to("gift_ideas#index")
    end

    it "routes to #new" do
      expect(:get => "/gift_ideas/new").to route_to("gift_ideas#new")
    end

    it "routes to #show" do
      expect(:get => "/gift_ideas/1").to route_to("gift_ideas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gift_ideas/1/edit").to route_to("gift_ideas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gift_ideas").to route_to("gift_ideas#create")
    end

    it "routes to #update" do
      expect(:put => "/gift_ideas/1").to route_to("gift_ideas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gift_ideas/1").to route_to("gift_ideas#destroy", :id => "1")
    end

  end
end
