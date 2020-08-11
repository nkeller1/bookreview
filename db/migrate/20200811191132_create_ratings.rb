class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
