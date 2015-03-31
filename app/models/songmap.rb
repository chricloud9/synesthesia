class Songmap < ActiveRecord::Base
	#setup hstore
	store_accessor  :name, :time_frequency
	
	belongs_to :user
end
