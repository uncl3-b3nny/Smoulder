json.array!(@events) do |event|
  json.extract! event, :id, :title, :allDay, :start, :end, :url, :className, :editable, :startEditable, :endEditable, :durationEditable, :color, :backgroundColor, :borderColor, :textColor
  json.url event_url(event, format: :json)
end
