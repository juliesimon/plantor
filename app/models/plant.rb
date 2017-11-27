class Plant < ApplicationRecord
  CATEGORIES = []
  belongs_to :user
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
