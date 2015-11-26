class CreateCustommarkers < ActiveRecord::Migration
  def change
    create_table :custommarkers do |t|
      t.timestamps null: false
      t.string :markerimage
      t.string :indexname
      t.integer :user_id
    end
  end
end
