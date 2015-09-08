class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :sqft

      t.timestamps null: false
    end
  end
end
