class CreateCategoriesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :activity_type_name
    end
  end
end
