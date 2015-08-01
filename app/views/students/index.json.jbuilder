json.array!(@students) do |student|
  json.extract! student, :id, :name, :last_name, :specialty_id, :company_id
  json.url student_url(student, format: :json)
end
