class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :movement
      t.string :reference
      t.string :case_material
      t.integer :year
      t.float :case_diameter
      t.float :case_height
      t.float :lug_width
      t.text :description
      t.decimal :retail_price
      t.string :url
      t.string :collection
      t.string :dial_color
      t.string :strap
      t.string :buckle
      t.string :numerals
      t.string :water_resistance
      t.string :glass

      t.timestamps
    end
  end
end
