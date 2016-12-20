class MatchesController < ApplicationController
	def index
		@matches=Match.all.order(started_at: :desc)
	end
	def show
		@match = Match.find_by(id: params[:id])
	end
end
