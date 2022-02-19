class CreateBakeries < ActiveRecord::Migration[6.1]
  def change
    create_table :bakeries do |t|
      t.string :name
      t.string :address
      t.text :description
      t.time :opening_hour
      t.time :closing_hour
      t.string :phone_number
      t.integer :post_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
