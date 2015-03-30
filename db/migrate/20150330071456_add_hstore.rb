class AddHstore < ActiveRecord::Migration
  def up
  	execute "CREATE EXTENSION hstore" #trying using psql instead
  	# enable_extension :hstore
  end

  def down
  	exectute "DROP EXTENSION hstore" #use psql instead of ruby
  	# disable_extension :hstore
  end
end
