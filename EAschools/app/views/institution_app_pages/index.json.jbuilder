json.array!(@institution_app_pages) do |institution_app_page|
  json.extract! institution_app_page, :id, :institution_app_id, :name, :url
  json.url institution_app_page_url(institution_app_page, format: :json)
end
