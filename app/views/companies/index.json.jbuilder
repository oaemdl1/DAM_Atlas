json.array!(@companies) do |company|
  json.extract! company, :id, :district_id, :razonsocial, :ruc, :telefonofijo, :telefonomovil, :partidaregistral, :representantelegal, :correo, :direccion, :linkgooglemaps, :eliminado
  json.url company_url(company, format: :json)
end
