json.array!(@mailer_contents) do |mailer_content|
  json.extract! mailer_content, :id, :category, :subcategory, :actual_context
  json.url mailer_content_url(mailer_content, format: :json)
end
