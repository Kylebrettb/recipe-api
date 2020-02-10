class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :course_id
      t.integer :genre_id
      t.integer :created_by
      t.string :named
      t.boolean :is_vegan?
      t.boolean :is_gluten_free?
      t.integer :created_by
      t.text :instructions_id
      t.string :ingredients_id

      t.timestamps
    end
  end
end
