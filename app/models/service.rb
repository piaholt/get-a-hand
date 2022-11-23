class Service < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
  # validates_associated :user
  validates :category, :description, :title, :price, presence: true
  # validates_uniqueness_of :user_id, scope: [:service_id]
end
