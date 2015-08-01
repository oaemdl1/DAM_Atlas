json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :ruc, :address, :phones, :latitude, :longitude, :district_id
  json.url company_url(company, format: :json)
end
