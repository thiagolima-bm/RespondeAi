ActionMailer::Base.smtp_settings = {
    :tls =>            true,
    :port =>           '587',
    :address =>        'smtp.gmail.com',
    :user_name =>      'ninjadasduvidas@gmail.com',
    :password =>       'bizulabneles',
    :domain =>         'gmail.com',
    :authentication => :plain
}
ActionMailer::Base.delivery_method = :smtp