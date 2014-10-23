require 'rails_helper'

RSpec.describe "suggestion_contents/new", :type => :view do
  before(:each) do
    assign(:suggestion_content, SuggestionContent.new(
      :category => "MyString",
      :subcategory => "MyString",
      :actual_context => "MyText"
    ))
  end

  it "renders new suggestion_content form" do
    render

    assert_select "form[action=?][method=?]", suggestion_contents_path, "post" do

      assert_select "input#suggestion_content_category[name=?]", "suggestion_content[category]"

      assert_select "input#suggestion_content_subcategory[name=?]", "suggestion_content[subcategory]"

      assert_select "textarea#suggestion_content_actual_context[name=?]", "suggestion_content[actual_context]"
    end
  end
end
