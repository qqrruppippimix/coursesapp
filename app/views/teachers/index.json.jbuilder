json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :dni, :email, :phone, :skills, :path_cv, :path_photo, :availability
  json.url teacher_url(teacher, format: :json)
end
