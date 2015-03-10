json.array!(@companies) do |company|
  json.extract! company, :id, :name, :contact_phone, :contact_person, :city
  json.url company_url(company, format: :json)
end
