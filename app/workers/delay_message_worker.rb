class DelayMessageWorker
  include Sidekiq::Worker

  def perform(message_id)
    # Get the message object
    message = Message.find(message_id)

    # Send an email
    MessageMailer.delay.default(message.recipient_email, message.text)

    # Change the status of the Message object to 'sent'
    message.sent = true
    message.save
  end
end
