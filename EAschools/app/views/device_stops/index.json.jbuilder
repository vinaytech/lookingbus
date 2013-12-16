json.array!(@device_stops) do |device_stop|
  json.extract! device_stop, :id, :device_id, :stop_name, :stop_lan, :stop_lat, :stop_time, :number_of_passanger
  json.url device_stop_url(device_stop, format: :json)
end
