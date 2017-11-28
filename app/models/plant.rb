class Plant < ApplicationRecord
  CATEGORIES = ["Green Plant", "Blooming Plant", "Decorative Plant", "Indoor Plant (large)", "Bonsai", "Cactus", "Artificial Plant", "Shrub", "Bamboo", "Fruit Tree", "Conifer"].sort
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :photo, presence: true
end
