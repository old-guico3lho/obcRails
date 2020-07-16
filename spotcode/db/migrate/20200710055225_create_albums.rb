class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true
      t.datetime :data

      t.timestamps
    end
  end
end
