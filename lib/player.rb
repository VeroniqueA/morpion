class Player

	attr_accessor :name, :symbol
	

	def initialize(player_name, player_symbol)
		@name = player_name
		@symbol = player_symbol
	end


	puts "quel est ton nom player1? Tu auras le symbole X"
	player_name = gets.chomp.to_s
	player_symbol = "X"
	player_1 = Player.new(player_name, player_symbol)
	

	puts "quel est ton nom player2? Tu auras le symbole O"
	player_name = gets.chomp.to_s
	player_symbol = "O"
	player_2 = Player.new(player_name, player_symbol)

	def show_state
	puts "tu es le joueur #{@name} et ton symbole est le #{@symbol}"
	end

player_1.show_state
player_2.show_state
	
end


binding.pry
puts "end of file"