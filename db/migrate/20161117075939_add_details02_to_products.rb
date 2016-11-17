class AddDetails02ToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :price, :decimalc
    add_column :products, :price, :decimal, precision: 5, scale: 2
    add_reference :products, :supplier, polymorphic: true
  end
end
