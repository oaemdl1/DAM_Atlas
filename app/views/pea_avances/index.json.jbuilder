json.array!(@pea_avances) do |pea_avance|
  json.extract! pea_avance, :id, :pea_id, :dominio, :oper_ejecutar, :oper_seminario
  json.url pea_avance_url(pea_avance, format: :json)
end
