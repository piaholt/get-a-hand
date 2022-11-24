class Service < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
  # validates_associated :user
  validates :description, :title, :price, presence: true
  CATEGORY = %w[cleaning babysitting gardening cooking admin other]
  validates :category, presence: true, inclusion: { in: CATEGORY }
  # validates_uniqueness_of :user_id, scope: [:service_id]
  include PgSearch::Model
  pg_search_scope :search_by_title_and_etc,
  against: [ :title, :description],
  associated_against: {
    user: %i[first_name last_name]
  },
  using: {
    tsearch: { prefix: true }
  }
end
