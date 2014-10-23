require 'rails_helper'

RSpec.describe "SuggestionContents", :type => :request do
  describe "GET /suggestion_contents" do
    it "works! (now write some real specs)" do
      get suggestion_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
