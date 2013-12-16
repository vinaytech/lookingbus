json.array!(@devices) do |device|
  json.extract! device, :id, :user_id, :device_number, :device_key, :institution_id, :vehicle_id, :vehicle_type_id, :status, :blocked
  json.url device_url(device, format: :json)
end
