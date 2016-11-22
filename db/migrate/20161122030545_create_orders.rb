class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.belongs_to :customer
      t.timestamps
    end
  end
end
