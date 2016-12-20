class MatchesController < ApplicationController
	def index
		@matches=Match.all.order(started_at: :desc).paginate(:page => params[:page])
	end
	def show
		@match = Match.find_by(id: params[:id])
    respond_to do | format |
      format.js
    end
	end
end
