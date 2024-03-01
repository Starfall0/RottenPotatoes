# frozen_string_literal: true

# Replace API_KEY and API_SECRET with the values you got from Google
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 'YOUR_API_KEY', 
  'YOUR_API_SECRET', 
    scope: 'email, profile'
  end
  OmniAuth.config.allowed_request_methods = %i[get]