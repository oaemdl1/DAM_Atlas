json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :fecha_visita, :company_id
  json.url instructor_url(instructor, format: :json)
end
