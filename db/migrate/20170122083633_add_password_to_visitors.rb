class AddPasswordToVisitors < ActiveRecord::Migration[5.0]
  def change
    add_column :visitors, :email, :string
    add_column :visitors, :password, :string
  end
end
