class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.string :title
      t.boolean :visitor
      t.references :user, null: false, foreign_key: true
      t.references :bakery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
