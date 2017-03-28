class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.text :trail_name
      t.time :duration
      t.text :description 
      t.timestamps
  end
end
