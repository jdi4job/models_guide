class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :products, table_name: :categorization do |t|
      t.index [:category_id, :product_id]
      t.index [:product_id, :category_id]
    end
  end
end
