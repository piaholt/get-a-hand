class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  # validates_associated :user, :service

  validates :starting_date, :end_date, presence: true

end
