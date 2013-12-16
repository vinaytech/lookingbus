class CreateDeviceStops < ActiveRecord::Migration
  def change
    create_table :device_stops do |t|
      t.integer :device_id
      t.string :stop_name
      t.string :stop_lan
      t.string :stop_lat
      t.datetime :stop_time 
      t.string :stop_key 
      t.integer :number_of_passanger
      t.boolean :status , :default => true
      t.boolean :active  , :default => true
      t.timestamps
    end
  end
end
