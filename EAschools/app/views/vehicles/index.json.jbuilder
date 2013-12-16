json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :user_id, :vehicle_number, :vehicle_key, :institution_id, :device_id, :vehicle_type_id, :status, :bolcked
  json.url vehicle_url(vehicle, format: :json)
end
