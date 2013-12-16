json.array!(@institutions_branches) do |institutions_branch|
  json.extract! institutions_branch, :id, :address_1, :address_2, :state, :country, :zip_code, :institution_id, :land_mark, :status
  json.url institutions_branch_url(institutions_branch, format: :json)
end
