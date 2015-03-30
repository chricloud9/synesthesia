class AddSettingsToSongmaps < ActiveRecord::Migration
  def change
  	add_column :songmaps, :settings, :hstore
  end
end
