class AddFreqsonToSongmaps < ActiveRecord::Migration
  def change
    add_column :freqson, :json, :string
  end
end
