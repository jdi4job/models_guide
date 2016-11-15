class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :max_login_attempts, :string
    add_column :users, :must_change_password, :boolean
  end
end
