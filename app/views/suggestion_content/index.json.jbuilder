json.array!(@suggestion_contents) do |suggestion_content|
  json.extract! suggestion_content, :id, :category, :subcategory, :actual_content
  json.url suggestion_content_url(suggestion_content, format: :json)
end
