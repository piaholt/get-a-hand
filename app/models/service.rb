class Service < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
  validates_associated :user
  validates :category, :description, :title, :price, presence: true
end
