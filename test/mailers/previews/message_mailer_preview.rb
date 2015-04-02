# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/default
  def default
    MessageMailer.default
  end

end
