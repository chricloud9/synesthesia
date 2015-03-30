class Songmap < ActiveRecord::Base
	#setup hstore
	store_accessor :time_frequency
	
	belongs_to :user
end
