class PlayerController < ApplicationController
	def index
		if current_player != nil
			@player = current_player
			render 'player/dash'
		else
			render 'player/index'
		end
	end

	def show
		getPlayer
		render 'player/dash'
	end

	def dash
		getPlayer
	end

	def update
		getPlayer
		player = params[:player]
		player.each do |param, value|
			@player[param] = value
		end
		@player.save
		render 'player/dash'
	end	

	def edit
		getPlayer
	end

	def getPlayer
		@player = current_player
	end
end
