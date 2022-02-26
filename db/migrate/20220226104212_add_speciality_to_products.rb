class AddSpecialityToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :speciality, :boolean
  end
end
