json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :middle_name, :email, :password_digest, :role_id, :phone_number, :mobile_number, :address_1, :address_2, :city, :state, :country, :zip_code, :institution_id, :created_by, :created_through, :status, :blocked
  json.url user_url(user, format: :json)
end
