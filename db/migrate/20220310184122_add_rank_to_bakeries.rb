class AddRankToBakeries < ActiveRecord::Migration[6.1]
  def change
    add_column :bakeries, :rank, :integer
  end
end
