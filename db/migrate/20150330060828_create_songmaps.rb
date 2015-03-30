class CreateSongmaps < ActiveRecord::Migration
  def change
    create_table :songmaps do |t|
  	  t.string 'name'
  	  t.hstore 'time_frequency' #add a hash with a time to frequency
  	  #array key value pair. example {1:[1423.5,23324.23,23423.23]}
      t.timestamps null: false
    end
  end
end
