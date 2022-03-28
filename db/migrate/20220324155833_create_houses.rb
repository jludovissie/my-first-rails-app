class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :sqfeet
      t.string :rooms
      t.string :bathrooms
      t.string :price
      
      t.timestamps
    end
  end
end