class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :user_id
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.string :url
      t.timestamps
    end
  end
end
