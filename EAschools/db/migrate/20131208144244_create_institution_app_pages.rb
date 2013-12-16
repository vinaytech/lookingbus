class CreateInstitutionAppPages < ActiveRecord::Migration
  def change
    create_table :institution_app_pages do |t|
      t.integer :institution_app_id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
