class QuestionMailer < ActionMailer::Base
  default from: "info@ninjadasduvidas.com.br"
  default to: "ninjadasduvidas@gmail.com"

  def send_question(title, body, user_email)
    @title = title
    @email = user_email
    @body = body
    headers 'In-Reply-To' => user_email
    mail(to: "ninjadasduvidas@gmail.com", subject: "Ninjas - #{title}")
  end
end
