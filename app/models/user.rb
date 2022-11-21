class User < ApplicationRecord
  has_many :services

  has_many :bookings
  has_many :services, through: :bookings

  validates :username, :first_name, :last_name, :location, :password, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
