class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|

      t.belongs_to :tenant
      t.date :date
      t.integer :amount
      t.boolean :paid_in_full
      t.integer :amount_under
      t.string :p_type
      t.string :rent_month
      t.string :check_number


      t.timestamps null: false
    end
  end
end
