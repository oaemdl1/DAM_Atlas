json.array!(@blocks) do |block|
  json.extract! block, :id, :specialty_id, :semestre, :ciclo_academico, :bloque, :dia_semana
  json.url block_url(block, format: :json)
end
