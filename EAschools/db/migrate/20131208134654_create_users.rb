class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :email
      t.string :password_digest
      t.integer :role_id
      t.string :phone_number
      t.string :mobile_number
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.integer :institution_id
      t.string :created_by
      t.string :created_through
      t.boolean :status  , :default => true
      t.boolean :blocked , :default => false

      t.timestamps
    end
  end
end
