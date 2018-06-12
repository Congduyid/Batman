class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.string :price
      t.string :loai

      t.timestamps
    end
  end
end
