require 'rails_helper'

RSpec.describe "suggestion_contents/show", :type => :view do
  before(:each) do
    @suggestion_content = assign(:suggestion_content, SuggestionContent.create!(
      :category => "Category",
      :subcategory => "Subcategory",
      :actual_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Subcategory/)
    expect(rendered).to match(/MyText/)
  end
end
