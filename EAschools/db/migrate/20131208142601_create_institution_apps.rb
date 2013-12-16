class CreateInstitutionApps < ActiveRecord::Migration
  def change
    create_table :institution_apps do |t|
      t.integer :institution_id
      t.string :name
      t.boolean :splash_screen_image , :default => true   
      t.string :splash_screen_url
      t.text :splash_screen_text
      t.string :splash_screen_slogans
      t.text :google_url 
      t.text :apple_url
      t.text :blackberry_url
      t.text :google_instruction 
      t.text :apple_instruction
      t.text :blackberry_instruction
      t.boolean :app_logo , :default => true
      t.string :app_logo_text
      t.boolean :app_logo_url    
      t.boolean :android_active , :default => true 
      t.boolean :apple_active , :default => true
      t.boolean :blackberry_active , :default  => true 
      t.boolean :web_active , :default => true 

      t.timestamps
    end
  end
end
