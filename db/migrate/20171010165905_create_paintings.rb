class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :artist
      t.float :height_cm
      t.float :width_cm
      t.integer :year

      t.timestamps
    end
  end
end
