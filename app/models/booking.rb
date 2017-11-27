class Booking < ApplicationRecord
  belongs_to :plant, dependent: :destroy
  belongs_to :user
end
