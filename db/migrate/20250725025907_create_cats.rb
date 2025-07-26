class CreateCats < ActiveRecord::Migration[8.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.decimal :price
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
