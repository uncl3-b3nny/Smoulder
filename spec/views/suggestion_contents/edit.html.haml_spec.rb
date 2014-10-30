require 'rails_helper'

RSpec.describe "suggestions/edit", :type => :view do
  before(:each) do
    @suggestion = assign(:suggestion, Suggestion.create!(
      :category => "MyString",
      :subcategory => "MyString",
      :actual_content => "MyText"
    ))
  end

  it "renders the edit suggestion form" do
    render

    assert_select "form[action=?][method=?]", suggestion_path(@suggestion), "post" do

      assert_select "input#suggestion_category[name=?]", "suggestion[category]"

      assert_select "input#suggestion_subcategory[name=?]", "suggestion[subcategory]"

      assert_select "textarea#suggestion_actual_content[name=?]", "suggestion[actual_content]"
    end
  end
end
