# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '659619851233129', '9b10ea8bb8a4193a24f81ae292adce8e',
    client_options: {
      site: 'https://graph.facebook.com/v3.0',
      authorize_url: "https://www.facebook.com/v3.0/dialog/oauth"
    }
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
    {
      scope: 'userinfo.email, userinfo.profile, http://gdata.youtube.com',
      prompt: 'select_account',
      image_aspect_ratio: 'square',
      image_size: 50
    }
end