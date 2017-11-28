class Booking < ApplicationRecord
  STATUS = ["accepted", "declined", "pending"]
  belongs_to :plant
  belongs_to :user
  validates :status, inclusion: { in: STATUS }
end
