json.array!(@institution_app_pages_sections) do |institution_app_pages_section|
  json.extract! institution_app_pages_section, :id, :institution_app_pages_id, :head_name, :body_text
  json.url institution_app_pages_section_url(institution_app_pages_section, format: :json)
end
