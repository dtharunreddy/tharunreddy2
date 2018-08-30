class CreateLaptops < ActiveRecord::Migration[5.2]
  def change
    create_table :laptops do |t|
      t.string :name
      t.string :model
      t.string :city

      t.timestamps
    end
  end
end
