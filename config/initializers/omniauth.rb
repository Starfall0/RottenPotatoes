# Replace API_KEY and API_SECRET with the values you got from Google
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, '885724697055-f8bi2ip1gte912u9pngrhrk4urk66o86.apps.googleusercontent.com', 
    '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', 
    scope: 'email, profile'
  end
  OmniAuth.config.allowed_request_methods = %i[get]