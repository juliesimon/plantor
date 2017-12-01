class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, presence: true
  validates :user, uniqueness: { scope: :booking, message: "you can only leave one review per booking" }
end
