class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable


  private

  # def send_signup_notification
  #   UserMailer.user_signup_notification(self).deliver_later
  # end
end

