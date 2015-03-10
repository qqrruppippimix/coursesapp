json.array!(@courses) do |course|
  json.extract! course, :id, :name, :index, :content, :previous_knowledge
  json.url course_url(course, format: :json)
end
