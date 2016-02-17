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
      t.date     :start
      t.date     :end
      t.date     :commencement
      t.string   :payment_method
      t.string   :late_payment
      t.integer  :rent
      t.integer  :cam
      t.integer   :increase_type
      t.integer   :increase_amount
      t.integer  :security_deposit
      t.integer  :first
      t.integer  :last

      t.timestamps null: false
    end
  end
end
