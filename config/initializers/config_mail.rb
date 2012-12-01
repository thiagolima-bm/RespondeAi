ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "domain.com",
  :authentication => :plain,
  :user_name =>      'ninjadasduvidas@gmail.com',
  :password =>       'bizulabneles',
}
ActionMailer::Base.delivery_method = :smtp