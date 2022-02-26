class RenameOldTableToNewTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :specialities, :products
  end
end
