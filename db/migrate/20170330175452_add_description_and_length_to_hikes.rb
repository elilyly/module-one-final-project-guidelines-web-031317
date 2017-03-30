class AddDescriptionAndLengthToHikes < ActiveRecord::Migration[5.0]
  def change
    change_table :hikes do |t|
      t.text :description
      t.float :length
    end
  end
end
