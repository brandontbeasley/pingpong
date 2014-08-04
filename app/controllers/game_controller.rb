class GameController < ApplicationController

	def index
	end
	
	def new
		@player = current_player
		@game = Game.new
		@game["player1"] = @player.username
		@game.save
		render '/game/new'
	end

	def update
		game = params[:game]
		@game = Game.find(game[:id])
		game.each do |param, value|
			@game[param] = value
		end
		if @game[:p1score] > @game[:p2score]
			@game[:winner] = @game[:player1]
		else
			@game[:winner] = @game[:player2]
		end
		@game.save
		winner = Player.find_by_username(@game[:winner])
		if winner.total_win_count == nil
			winner.total_win_count = 1
		else	
			winner[:total_win_count] += 1
		end
		binding.pry 
		winner.save
	end

	def create
		game = params[:game]
	end
end
