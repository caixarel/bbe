class CreateSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :specialities do |t|
      t.string :name
      t.text :description
      t.references :bakery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
