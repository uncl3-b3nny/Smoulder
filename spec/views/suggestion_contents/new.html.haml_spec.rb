require 'rails_helper'

RSpec.describe "suggestions/new", :type => :view do
  before(:each) do
    assign(:suggestion, Suggestion.new(
      :category => "MyString",
      :subcategory => "MyString",
      :actual_content => "MyText"
    ))
  end

  it "renders new suggestion form" do
    render

    assert_select "form[action=?][method=?]", suggestions_path, "post" do

      assert_select "input#suggestion_category[name=?]", "suggestion[category]"

      assert_select "input#suggestion_subcategory[name=?]", "suggestion[subcategory]"

      assert_select "textarea#suggestion_actual_content[name=?]", "suggestion[actual_content]"
    end
  end
end
