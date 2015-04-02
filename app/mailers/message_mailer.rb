class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.default.subject
  #
  def default(recipient_email, content)
    @content = content

    mail to: recipient_email
  end
end
