class AddTagToUserTag < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_tags, :tag, null: false, foreign_key: true
  end
end
