json.array!(@app_users) do |app_user|
  json.extract! app_user, :id, :login, :password, :name, :last_name, :app_user_type_id
  json.url app_user_url(app_user, format: :json)
end
