class CreateDogs < ActiveRecord::Migration[8.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.decimal :price
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
