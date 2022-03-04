class AddVotesToTags < ActiveRecord::Migration[6.1]
  def change
        add_column :tags, :votes, :integer
  end
end
