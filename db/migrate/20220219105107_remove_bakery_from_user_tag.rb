class RemoveBakeryFromUserTag < ActiveRecord::Migration[6.1]
  def change
    remove_reference :user_tags, :bakery, null: false, foreign_key: true
  end
end
