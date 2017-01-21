class AddColumnIdToVisitors < ActiveRecord::Migration[5.0]
  def change
    add_column :visitors, :name, :integer
  end
end
