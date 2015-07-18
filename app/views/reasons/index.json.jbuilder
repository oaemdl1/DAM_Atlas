json.array!(@reasons) do |reason|
  json.extract! reason, :id, :detalle
  json.url reason_url(reason, format: :json)
end
