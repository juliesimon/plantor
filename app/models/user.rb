class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :plants, dependent: :destroy
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
