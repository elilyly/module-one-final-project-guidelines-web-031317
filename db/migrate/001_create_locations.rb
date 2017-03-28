class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :city
      t.text :state
      t.timestamps
  end
end
