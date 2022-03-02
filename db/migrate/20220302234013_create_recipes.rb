class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.integer :likes
      t.string :image
      t.integer :preptime
      t.integer :cooktime
      t.integer :category_id

      t.timestamps
    end
  end
end
