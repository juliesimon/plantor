class AddPhotoToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :photo, :string
  end
end
