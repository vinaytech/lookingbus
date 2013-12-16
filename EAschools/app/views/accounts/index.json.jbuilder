json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :price, :vehicle_number_allowed, :institution_number_allowed, :user_number_allowed, :account_type, :status
  json.url account_url(account, format: :json)
end
