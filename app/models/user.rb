class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
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
