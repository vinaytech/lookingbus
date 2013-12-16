class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :user_id
      t.string :device_number
      t.string :device_key 
      t.string :device_pin
      t.integer :institution_id
      t.integer :vehicle_id
      t.integer :vehicle_type_id
      t.boolean :status, :default => true
      t.boolean :blocked, :default => false

      t.timestamps
    end
  end
end
