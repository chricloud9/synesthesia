class AddSongMapToUsers < ActiveRecord::Migration
  def change
    add_column :users, :song_map, :integer
    #add a column in users called song_map that is an integer value
  end
end
