json.array!(@businesses) do |business|
  json.extract! business, :id, :razonsocial, :ruc, :telefonofijo, :telefonomovil, :partidaregistral, :representantelegal, :correo, :direccion, :linkgooglemaps, :eliminado, :districts_id
  json.url business_url(business, format: :json)
end
