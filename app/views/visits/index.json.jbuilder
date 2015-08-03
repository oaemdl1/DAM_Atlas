json.array!(@visits) do |visit|
  json.extract! visit, :id, :visit_date, :estimated_time, :motive, :comments, :company_id, :supervisor_id, :student_id, :visit_status_id
  json.url visit_url(visit, format: :json)
end
