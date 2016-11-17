class CreateSupplier < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
    end
  end
end
