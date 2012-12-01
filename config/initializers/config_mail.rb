ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => "587",
  :domain => "localhost.localdomain",
  :authentication => :plain,
  :user_name => "ninjadasduvidas",
  :password => "bizulabneles"
}
ActionMailer::Base.delivery_method = :smtp