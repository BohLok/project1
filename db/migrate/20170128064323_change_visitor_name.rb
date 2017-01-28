class ChangeVisitorName < ActiveRecord::Migration[5.0]
  def change
    change_column :visitors, :name, :string
  end
end
