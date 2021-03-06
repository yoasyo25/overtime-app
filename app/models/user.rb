class User < ApplicationRecord
  has_many :posts
  has_many :audit_logs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :phone
  PHONE_REGEX = /\A[0-9]*\z/
  validates_format_of :phone, with: PHONE_REGEX
  validates :phone, length: { is: 10 }

  def full_name
    "#{last_name}, #{first_name}".upcase
  end

end

SmsTool.send_sms(number: '2028319213', message: "Does this work?")
