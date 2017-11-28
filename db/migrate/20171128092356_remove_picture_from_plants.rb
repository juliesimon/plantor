class RemovePictureFromPlants < ActiveRecord::Migration[5.1]
  def change
    remove_column :plants, :picture
  end
end
