json.array!(@students) do |student|
  json.extract! student, :id, :nombreP, :nombreS, :ApellidoPaterno, :ApellidoMaterno
  json.url student_url(student, format: :json)
end
