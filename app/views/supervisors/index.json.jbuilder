json.array!(@supervisors) do |supervisor|
  json.extract! supervisor, :id, :company_id, :nombrep, :nombres, :apellidopaterno, :apellidomaterno, :dni, :telefonos, :correopersonal, :eliminado
  json.url supervisor_url(supervisor, format: :json)
end
