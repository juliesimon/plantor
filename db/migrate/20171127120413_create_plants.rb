class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :instruction
      t.string :category
      t.integer :price_per_day
      t.string :picture
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
