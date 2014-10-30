require 'rails_helper'
# To Do: correct rspec files for refactored models & databases
RSpec.describe "suggestions/index", :type => :view do
  before(:each) do
    assign(:suggestions, [
      Suggestion.create!(
        :category => "Category",
        :subcategory => "Subcategory",
        :actual_content => "MyText"
      ),
      Suggestion.create!(
        :category => "Category",
        :subcategory => "Subcategory",
        :actual_content => "MyText"
      )
    ])
  end

  it "renders a list of suggestions" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
