class CreateCollabs < ActiveRecord::Migration[5.0]
  def change
    create_table :collabs do |t|
      t.string :title
      t.text :description
      t.string :photo_url
      t.references :artist
      t.references :musician

      t.timestamps
    end
  end
end
