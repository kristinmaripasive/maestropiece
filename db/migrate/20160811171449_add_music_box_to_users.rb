class AddMusicBoxToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :music_box, :boolean, :default => false
  end
end
