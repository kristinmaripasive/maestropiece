class CreateMusicians < ActiveRecord::Migration[5.0]
  def change
    create_table :musicians do |t|
      t.string :name
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end
