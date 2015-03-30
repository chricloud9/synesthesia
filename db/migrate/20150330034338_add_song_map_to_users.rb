class AddSongMapToUsers < ActiveRecord::Migration
  def change
    add_column :users, :song_map, :integer
  end
end
