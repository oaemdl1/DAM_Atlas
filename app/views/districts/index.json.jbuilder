json.array!(@districts) do |district|
  json.extract! district, :id, :detalle
  json.url district_url(district, format: :json)
end
