json.array!(@visit_statuses) do |visit_status|
  json.extract! visit_status, :id, :name
  json.url visit_status_url(visit_status, format: :json)
end
