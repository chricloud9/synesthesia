class SongmapsController < ApplicationController
	def index
		@songmap = Songmap.all
	end

	def create
		@songmap = Songmap.create(songmap_params)
	end

	private

		def all_songmaps
			@songmaps = Songmap.all
		end

		def songmap_params
			params.require(:songmap).permit(:name,:time_frequency)
		end
end
