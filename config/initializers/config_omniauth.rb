# Replace API_KEY and API_SECRET with the values you got from Twitter
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'FACEBOOK_APP_ID', 'FACEBOOK_APP_SECRET'
  provider :github, 'GITHUB_APP_ID', 'GITHUB_APP_SECRET'
end