class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :user_id # user_id
      t.float :lat # coordinates
      t.float :lng
      t.string :title # displayed as an summary in map
      t.string :content # details, doesn't displayed in map
      t.datetime :shigan # the time when the spot writed yyyy-mm-dd hh:mm:ss
      t.integer :button
      t.string :my_image
      t.timestamps null: false
    end
  end
end
