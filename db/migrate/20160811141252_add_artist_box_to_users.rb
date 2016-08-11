class AddArtistBoxToUsers < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :artist_box, :boolean, :default => false
  end
end
