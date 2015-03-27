class CreateSongMaps < ActiveRecord::Migration
  def change
    create_table :song_maps do |t|

      t.timestamps null: false
    end
  end
end
