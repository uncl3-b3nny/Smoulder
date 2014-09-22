require 'rails_helper'

RSpec.describe "mailer_contents/new", :type => :view do
  before(:each) do
    assign(:mailer_content, MailerContent.new(
      :category => "MyString",
      :subcategory => "MyString",
      :actual_context => "MyText"
    ))
  end

  it "renders new mailer_content form" do
    render

    assert_select "form[action=?][method=?]", mailer_contents_path, "post" do

      assert_select "input#mailer_content_category[name=?]", "mailer_content[category]"

      assert_select "input#mailer_content_subcategory[name=?]", "mailer_content[subcategory]"

      assert_select "textarea#mailer_content_actual_context[name=?]", "mailer_content[actual_context]"
    end
  end
end
