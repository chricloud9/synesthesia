class CreateSongmaps < ActiveRecord::Migration
enable_extension 'hstore' unless extension_enabled?('hstore') #enable the hstore value 
  def change
  	enable_extension 'hstore' unless extension_enabled?('hstore'
    create_table :songmaps do |t|
  	  t.string 'name'
  	  t.hstore 'time_frequency' #add a hash with a time to frequency
  	  #array key value pair. example {1:[1423.5,23324.23,23423.23]}
      t.timestamps null: false
    end
  end
end
