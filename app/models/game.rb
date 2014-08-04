class Game < ActiveRecord::Base
	attr_accessor :player1, :player2, :p1score, :p2score, :winner
end
