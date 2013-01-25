OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '323705184406626', '046916a0ea109aa71b3fc1d73970ed7f'
end