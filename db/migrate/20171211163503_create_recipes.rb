class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :created_by
      t.string :description
      t.string :category
      t.string :url
      t.string :time
      t.string :servings
      t.string :calories
      t.string :ing1
      t.string :ing2
      t.string :ing3
      t.string :ing4
      t.string :ing5
      t.string :ins1
      t.string :ins2
      t.string :ins3
      t.string :ins4
      t.string :ins5
      t.timestamps
    end
  end
end
