class AddAverageRatingToBakery < ActiveRecord::Migration[6.1]
  def change
    add_column :bakeries, :average_rating, :float
  end
end
