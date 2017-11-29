class Plant < ApplicationRecord
  CATEGORIES = ["Green Plant", "Blooming Plant", "Decorative Plant", "Indoor Plant (large)", "Bonsai", "Cactus", "Artificial Plant", "Shrub", "Bamboo", "Fruit Tree", "Conifer"].sort
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, case_sensitive: false }
  validates :photo, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
