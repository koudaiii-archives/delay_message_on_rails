class Message < ActiveRecord::Base
  validates :recipient_email, :text, :delay_until_time, :timezone_offset, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :recipient_email, format: { with: VALID_EMAIL_REGEX, message: 'is not valid' }
end
