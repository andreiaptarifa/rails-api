Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['1'], ENV['GOCSPX-FGA69zdo_BTG3dcuFxJet0']
end
