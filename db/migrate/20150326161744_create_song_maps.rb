class CreateSongMaps < ActiveRecord::Migration
  enable_extension 'hstore' unless extension_enabled?('hstore') #enable the hstore value in the table
  #this allows us to use hashes in our rails data table!
 def change
  create_table :song_maps do |t|
  	t.string 'name'
  	t.hstore 'time_frequency' #add a hash with a time to frequency
  	#array key value pair. example {1:[1423.5,23324.23,23423.23]}
  end
end
end
