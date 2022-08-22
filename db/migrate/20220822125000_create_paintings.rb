class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.string :artist_name
      t.integer :year
      t.float :price
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
