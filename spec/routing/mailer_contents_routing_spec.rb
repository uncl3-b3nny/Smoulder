require "rails_helper"

RSpec.describe MailerContentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mailer_contents").to route_to("mailer_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/mailer_contents/new").to route_to("mailer_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/mailer_contents/1").to route_to("mailer_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mailer_contents/1/edit").to route_to("mailer_contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mailer_contents").to route_to("mailer_contents#create")
    end

    it "routes to #update" do
      expect(:put => "/mailer_contents/1").to route_to("mailer_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mailer_contents/1").to route_to("mailer_contents#destroy", :id => "1")
    end

  end
end
