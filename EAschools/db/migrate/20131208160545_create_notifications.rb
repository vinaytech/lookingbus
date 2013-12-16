class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :institution_id
      t.integer :institution_app_id
      t.string :head
      t.text :description
      t.boolean :status
      t.boolean :active
      t.datetime :start_at
      t.datetime :end_at
      t.integer :created_by
      t.timestamps
    end
  end
end
