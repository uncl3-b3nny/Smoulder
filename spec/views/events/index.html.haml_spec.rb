require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
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
      ),
      Event.create!(
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
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Start".to_s, :count => 2
    assert_select "tr>td", :text => "End".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Class Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Background Color".to_s, :count => 2
    assert_select "tr>td", :text => "Border Color".to_s, :count => 2
    assert_select "tr>td", :text => "Text Color".to_s, :count => 2
  end
end
