json.array!(@details) do |detail|
  json.extract! detail, :id, :name, :sex, :college, :preexam, :image
  json.url detail_url(detail, format: :json)
end
