class CreateVenkats < ActiveRecord::Migration[5.2]
  def change
    create_table :venkats do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :email

      t.timestamps
    end
  end
end
