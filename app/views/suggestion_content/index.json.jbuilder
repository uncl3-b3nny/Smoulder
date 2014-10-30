json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :category, :subcategory, :actual_content
  json.url suggestion_url(suggestion, format: :json)
end
