json.array!(@course_reserves) do |course_reserf|
  json.extract! course_reserf, :id
  json.url course_reserf_url(course_reserf, format: :json)
end
