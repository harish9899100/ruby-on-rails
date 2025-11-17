class ChangeColumnNameInUser < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :emil, :email
  end
end
