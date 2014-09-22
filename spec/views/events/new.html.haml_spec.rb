require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :title => "MyString",
      :allDay => false,
      :start => "MyString",
      :end => "MyString",
      :url => "MyString",
      :className => "MyString",
      :editable => false,
      :startEditable => false,
      :endEditable => false,
      :durationEditable => false,
      :color => "MyString",
      :backgroundColor => "MyString",
      :borderColor => "MyString",
      :textColor => "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_allDay[name=?]", "event[allDay]"

      assert_select "input#event_start[name=?]", "event[start]"

      assert_select "input#event_end[name=?]", "event[end]"

      assert_select "input#event_url[name=?]", "event[url]"

      assert_select "input#event_className[name=?]", "event[className]"

      assert_select "input#event_editable[name=?]", "event[editable]"

      assert_select "input#event_startEditable[name=?]", "event[startEditable]"

      assert_select "input#event_endEditable[name=?]", "event[endEditable]"

      assert_select "input#event_durationEditable[name=?]", "event[durationEditable]"

      assert_select "input#event_color[name=?]", "event[color]"

      assert_select "input#event_backgroundColor[name=?]", "event[backgroundColor]"

      assert_select "input#event_borderColor[name=?]", "event[borderColor]"

      assert_select "input#event_textColor[name=?]", "event[textColor]"
    end
  end
end
