OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.meecon_facebook_id, Rails.application.secrets.meecon_facebook_secret
end

