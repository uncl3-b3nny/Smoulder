require 'rails_helper'

RSpec.describe "suggestion_contents/edit", :type => :view do
  before(:each) do
    @suggestion_content = assign(:suggestion_content, SuggestionContent.create!(
      :category => "MyString",
      :subcategory => "MyString",
      :actual_context => "MyText"
    ))
  end

  it "renders the edit suggestion_content form" do
    render

    assert_select "form[action=?][method=?]", suggestion_content_path(@suggestion_content), "post" do

      assert_select "input#suggestion_content_category[name=?]", "suggestion_content[category]"

      assert_select "input#suggestion_content_subcategory[name=?]", "suggestion_content[subcategory]"

      assert_select "textarea#suggestion_content_actual_context[name=?]", "suggestion_content[actual_context]"
    end
  end
end
