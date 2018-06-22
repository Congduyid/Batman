class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :diachi
      t.string :email
      t.decimal :sdt
      t.text :ghichu
      t.decimal :total

      t.timestamps
    end
  end
end
