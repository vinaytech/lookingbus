json.array!(@notifications) do |notification|
  json.extract! notification, :id, :institution_id, :institution_app_id, :head, :description, :status, :active, :start_at, :end_at, :created_by
  json.url notification_url(notification, format: :json)
end
