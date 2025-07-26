class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.decimal :balance
      t.string :profile_img_url
      t.string :password_digest

      t.timestamps
    end
  end
end
