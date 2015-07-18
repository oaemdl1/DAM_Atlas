json.array!(@peas) do |pea|
  json.extract! pea, :id, :specialty_id, :ciclo, :detalle
  json.url pea_url(pea, format: :json)
end
