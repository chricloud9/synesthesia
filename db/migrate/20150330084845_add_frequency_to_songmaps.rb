class AddFrequencyToSongmaps < ActiveRecord::Migration
  def change
    add_column :songmaps, :frequency, :hstore
  end
end
