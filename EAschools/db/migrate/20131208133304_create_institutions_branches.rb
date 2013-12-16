class CreateInstitutionsBranches < ActiveRecord::Migration
  def change
    create_table :institutions_branches do |t|  
      t.string :name
      t.string :address_1
      t.string :address_2  
      t.string :city 
      t.string :state
      t.string :country
      t.string :zip_code
      t.integer :institution_id
      t.string :land_mark
      t.boolean :status , :default => true
      t.boolean :main_branch , :default => false  
      t.timestamps
    end
  end
end
