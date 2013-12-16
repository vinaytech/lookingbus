class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :user_id
      t.string :vehicle_number
      t.string :vehicle_key
      t.integer :institution_id
      t.integer :device_id
      t.integer :vehicle_type_id
      t.boolean :status , :default => true
      t.boolean :blocked , :default => false

      t.timestamps
    end
  end
end
