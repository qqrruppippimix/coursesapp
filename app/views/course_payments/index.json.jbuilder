json.array!(@course_payments) do |course_payment|
  json.extract! course_payment, :id
  json.url course_payment_url(course_payment, format: :json)
end
