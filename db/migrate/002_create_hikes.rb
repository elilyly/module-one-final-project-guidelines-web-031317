class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.text :trail_name
      t.float :duration
      t.text :description
      t.integer :category_id
      t.integer :location_id
      t.timestamps
  end
end
