class CreateInstitutionAppPagesSections < ActiveRecord::Migration
  def change
    create_table :institution_app_pages_sections do |t|
      t.integer :institution_app_pages_id
      t.string :head_name
      t.text :body_text

      t.timestamps
    end
  end
end
