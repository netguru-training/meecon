OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, Rails.application.secrets.meecon-facebook-id, Rails.application.secrets.meecon-facebook-secret
end

