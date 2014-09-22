require 'rails_helper'

RSpec.describe "mailer_contents/show", :type => :view do
  before(:each) do
    @mailer_content = assign(:mailer_content, MailerContent.create!(
      :category => "Category",
      :subcategory => "Subcategory",
      :actual_context => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Subcategory/)
    expect(rendered).to match(/MyText/)
  end
end
