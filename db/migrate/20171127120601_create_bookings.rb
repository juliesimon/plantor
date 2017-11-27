class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :status
      t.references :plant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
