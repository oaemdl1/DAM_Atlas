json.array!(@supervisors) do |supervisor|
  json.extract! supervisor, :id, :name, :last_name, :app_user_id
  json.url supervisor_url(supervisor, format: :json)
end
