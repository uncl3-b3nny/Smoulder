require 'rails_helper'

RSpec.describe "suggestion_contents/index", :type => :view do
  before(:each) do
    assign(:suggestion_contents, [
      SuggestionContent.create!(
        :category => "Category",
        :subcategory => "Subcategory",
        :actual_content => "MyText"
      ),
      SuggestionContent.create!(
        :category => "Category",
        :subcategory => "Subcategory",
        :actual_content => "MyText"
      )
    ])
  end

  it "renders a list of suggestion_contents" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
