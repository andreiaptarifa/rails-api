Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['1081665142100-v5ua7e8rjfr8r9gsdspcmhb9532pqdku.apps.googleusercontent.com'], ENV['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']
end
