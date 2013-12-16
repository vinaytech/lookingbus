json.array!(@institution_apps) do |institution_app|
  json.extract! institution_app, :id, :institution_id, :name, :splash_screen_image, :splash_screen_url, :splash_screen_text, :splash_screen_slogans, :google_url, :app_logo, :app_logo_text, :app_logo_url
  json.url institution_app_url(institution_app, format: :json)
end
