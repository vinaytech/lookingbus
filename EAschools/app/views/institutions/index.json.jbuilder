json.array!(@institutions) do |institution|
  json.extract! institution, :id, :name, :number_of_vehicle, :institution_key, :number_of_institution_branch, :status, :account_type_id
  json.url institution_url(institution, format: :json)
end
