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
		lame_ass = songmap_params
		lame_ass[:time_frequency] = {parmams: songmap_params[:time_frequency]}
		@songmap = Songmap.create(lame_ass)

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
			params.require(:songmap).permit(:name,time_frequency: [])
		end
end

#{:time_frequency => [] }, :recur