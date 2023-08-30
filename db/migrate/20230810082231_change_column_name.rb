class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :machines, :title, :name
    rename_column :machines, :body, :description
  end
end
