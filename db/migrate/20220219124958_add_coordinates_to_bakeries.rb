class AddCoordinatesToBakeries < ActiveRecord::Migration[6.1]
  def change
    add_column :bakeries, :latitude, :float
    add_column :bakeries, :longitude, :float
  end
end
