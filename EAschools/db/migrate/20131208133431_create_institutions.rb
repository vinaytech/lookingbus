class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.integer :number_of_vehicle , :default => 0
      t.string :institution_key
      t.integer :number_of_institution_branch , :default => 1
      t.boolean :status , :default => true
      t.integer :account_type_id  
      t.boolean :institutions_cms, :default => true
      t.boolean :institutions_vehicle, :default => true 
      t.boolean :institutions_web, :default => true 
      t.boolean :institutions_android, :default => true 
      t.boolean :institutions_apple, :default => true  
      t.boolean :institutions_blackberry, :default => true
      t.timestamps
    end
  end
end
