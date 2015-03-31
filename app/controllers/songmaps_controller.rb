class SongmapsController < ApplicationController
	def index
		@songmap = Songmap.all

		respond_to do |format|
			format.html
			format.json { render json: @songmap}
		end
		#set up controller method to accept json from ajax call
	end

	def create
		@songmap = Songmap.create(songmap_params)
		
		respond_to do |format|
			format.html
			format.json { render json: @songmap}
		end
	end

	private

		def all_songmaps
			@songmaps = Songmap.all
		end

		def songmap_params
			params.require(:songmap).permit(:name,:time_frequency => [])
		end
end

#{:time_frequency => [] }, :recur