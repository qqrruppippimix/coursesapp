json.array!(@students) do |student|
  json.extract! student, :id, :name, :first_surname, :second_surname, :dni, :email, :phone, :pass
  json.url student_url(student, format: :json)
end
