class CreateMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :musics do |t|
      t.string :name
      t.text :description
      t.string :photo_url
      t.string :preview_url
      t.references :musician

      t.timestamps
    end
  end
end
