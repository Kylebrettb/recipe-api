class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :course_id
      t.integer :genre_id
      t.integer :created_by
      t.string :name
      t.boolean :is_vegan?
      t.boolean :is_gluten_free?
      t.text :instructions
      t.string :ingredients

      t.timestamps
    end
  end
end
