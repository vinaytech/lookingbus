class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :price, :precision => 5, :scope => 2     
      t.integer :vehicle_number_allowed , :default => 0
      t.integer :institution_number_allowed , :default => 0  
      t.integer :user_number_allowed , :default => 0  
      t.string :account_type , :default => "Free"
      t.boolean :status , :default => true 
      t.boolean :android_active , :default => true 
      t.boolean :apple_active , :default => true
      t.boolean :blackberry_active , :default  => true 
      t.boolean :web_active , :default => true 

      t.timestamps
    end
  end
end
