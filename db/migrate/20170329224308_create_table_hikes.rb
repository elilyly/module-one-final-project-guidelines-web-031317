class CreateTableHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.string :trail_name
      t.integer :category_id
      t.integer :location_id
      t.timestamps
    end
  end
end
