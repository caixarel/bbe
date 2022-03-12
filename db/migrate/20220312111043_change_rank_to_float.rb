class ChangeRankToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :bakeries, :rank, :float
  end
end
