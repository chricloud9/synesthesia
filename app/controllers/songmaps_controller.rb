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
		paramholder = songmap_params
		# paramholder[:time_frequency] = {params: songmap_params[:time_frequency]}
		@songmap = Songmap.create(paramholder)

		# puts params.inspect
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
			params.require(:songmap).permit(:name,:frequencyson)
		end
end

#{:time_frequency => [] }, :recur