require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "Title",
      :allDay => false,
      :start => "Start",
      :end => "End",
      :url => "Url",
      :className => "Class Name",
      :editable => false,
      :startEditable => false,
      :endEditable => false,
      :durationEditable => false,
      :color => "Color",
      :backgroundColor => "Background Color",
      :borderColor => "Border Color",
      :textColor => "Text Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Start/)
    expect(rendered).to match(/End/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Class Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Background Color/)
    expect(rendered).to match(/Border Color/)
    expect(rendered).to match(/Text Color/)
  end
end
