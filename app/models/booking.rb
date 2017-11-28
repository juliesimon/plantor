class Booking < ApplicationRecord
  STATUS = ["accepted", "declined", "pending"]
  belongs_to :plant
  belongs_to :user
  validates :status, inclusion: { in: STATUS }

  validate :end_date_after_start_date?

def end_date_after_start_date?
  if ends_at < starts_at
    errors.add :ends_at, "must be after start date"
  end
end
end
