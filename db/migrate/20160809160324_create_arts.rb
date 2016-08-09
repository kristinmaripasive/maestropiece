class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.text :description
      t.string :photo_url
      t.references :artist

      t.timestamps
    end
  end
end
