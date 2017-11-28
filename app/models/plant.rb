class Plant < ApplicationRecord
  CATEGORIES = ["Plante Verte", "Plante Fleurie", "Plante en Pot Décoratif", "Grande Plante d'Intérieur", "Bonsaï", "Cactus", "Plante Artificielle", "Arbuste d'Extérieur", "Bambous", "Fruitier", "Conifère"].sort
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :photo, presence: true
end
