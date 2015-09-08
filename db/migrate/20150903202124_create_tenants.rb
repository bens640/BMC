class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.belongs_to :property
      t.string :unit_number
      t.integer :sqft
      t.string :name
      t.string :owner
      t.string :phone
      t.string :email
      t.string :b_type
      t.string :lease_length
      t.date :start
      t.date :end
      t.integer :rent
      t.integer  "cam"
      t.string   "increase_type"
      t.string   "increase_amount"
      t.string   "renewal_options"
      t.integer  "security_deposit"
      t.integer  "first_last"

      t.timestamps null: false
    end
  end
end
