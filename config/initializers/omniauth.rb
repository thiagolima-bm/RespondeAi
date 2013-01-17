OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '396887157051732', '4ffb6df4cea8f18949e28fdc5ae95afe'
end