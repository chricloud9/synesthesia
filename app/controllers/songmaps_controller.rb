class SongmapsController < ApplicationController
	def index
		@songmap = Songmap.all
end
