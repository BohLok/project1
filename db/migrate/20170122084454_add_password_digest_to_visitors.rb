class AddPasswordDigestToVisitors < ActiveRecord::Migration[5.0]
  def change
    add_column :visitors, :password_digest, :string
  end
end
