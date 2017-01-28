class RemovePasswordFromVisitors < ActiveRecord::Migration[5.0]
  def change
    remove_column :visitors, :password, :string
  end
end
