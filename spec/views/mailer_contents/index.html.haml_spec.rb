require 'rails_helper'

RSpec.describe "mailer_contents/index", :type => :view do
  before(:each) do
    assign(:mailer_contents, [
      MailerContent.create!(
        :category => "Category",
        :subcategory => "Subcategory",
        :actual_context => "MyText"
      ),
      MailerContent.create!(
        :category => "Category",
        :subcategory => "Subcategory",
        :actual_context => "MyText"
      )
    ])
  end

  it "renders a list of mailer_contents" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
