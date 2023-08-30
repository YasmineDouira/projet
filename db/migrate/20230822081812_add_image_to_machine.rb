class AddImageToMachine < ActiveRecord::Migration[7.0]
  def change
    add_column :machines, :image, :string
  end
end
