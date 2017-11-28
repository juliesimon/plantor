class Plant < ApplicationRecord
  CATEGORIES = ["plantes vertes", "plantes fleuries", "plantes en pot décoratif", "grandes plantes d'intérieur", "bonsais", "cactus", "plantes artificielles", "arbustes d'extérieurs", "bambous", "fruitiers", "conifères"]
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  mount_uploader :photo, PhotoUploader
end
