class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :img_url
      t.integer :price
      t.string :transmition
      t.string :duration

      t.timestamps
    end
  end
end
