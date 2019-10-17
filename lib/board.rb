class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

    # #   #TO DO :
  # #   #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
  #   #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  # end

attr_accessor :board

  def initialize
    empty = ["","","","","","","","",""]
    board = ["1","2","3","4","5","6","7","8","9"]
    @board =  [*0..8].map { |i|  BoardCase.new(i).case_nr }
    @@board_count = 9
  end

  def show_board
    puts "#{@board[0..2]}"
    puts "#{@board[3..5]}"
    puts "#{@board[6..8]}"
  end


  
  # board = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
  # @board = board
  # # @position = position[0..8]
  # end

#   def show_board(board)

#     puts "|#{@board[0]}|#{@board[1]}|#{@board[2]}|"
#     puts "|#{@board[3]}|#{@board[4]}|#{@board[5]}|"
#     puts "|#{@board[6]}|#{@board[7]}|#{@board[8]}|"
 
#   end

# @board = Board.new
# @board.show_board
  #   #TO DO : une méthode qui :
  #   #1) demande au bon joueur ce qu'il souhaite faire
  #   #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  # end

  def play_turn1(player1)
    while ((empty[0]=="" || empty[1]=="" || empty[2]=="" || empty[3]=="" || empty[4]=="" || empty[5]=="" || empty[6]=="" || empty[7]=="" || empty[8]=="") && @@board_count > 0
       puts "player1 quelle case choisis-tu ?"
        case_nr = gets.chomp.to_i - 1
      while empty[case_nr]!=""
      puts "Choisissez une autre case"
      case_nr = gets.chomp.to_i - 1
    end
    @@board_count -= 1
    empty[case_nr] = "X"
    board(case_nr) = "X"
  end

  def play_turn2(player2)
     while ((empty[0]=="" || empty[1]=="" || empty[2]=="" || empty[3]=="" || empty[4]=="" || empty[5]=="" || empty[6]=="" || empty[7]=="" || empty[8]=="") && @@board_count > 0
       puts "player2 quelle case choisis-tu ?"
        case_nr = gets.chomp.to_i - 1
      while empty[case_nr]!=""
      puts "Choisissez une autre case"
      case_nr = gets.chomp.to_i - 1
    end
    @@board_count -= 1
    empty[case_nr] = "O"
    board(case_nr) = "O"
  end  


  # def victory?
  #   #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  # end
 

  def victory?
    if ((board[0]==board[1] && board[0]==board[2] && board[0]!="" || board[3]==board[4] && board[3]==board[5] && board[3]!="" || board[6]==board[7] && board[6]==board[8] && board[6]!="" || board[0]==board[3] && board[0]==board[6] && board[0]!="" || board[1]==board[4] && board[1]==board[7] && board[1]!="" || board[2]==board[5] && board[2]==board[8] && board[2]!="" || board[0]==board[4] && board[0]==board[8] && board[0]!="" || board[2]==board[4] && board[2]==board[6] && board[2]!="")) && (board[0] = "X") && (board[4] = "X") && (board[6] = "X")
      puts "player1 a gagné !"
    elsif ((board[0]==board[1] && board[0]==board[2] && board[0]!="" || board[3]==board[4] && board[3]==board[5] && board[3]!="" || board[6]==board[7] && board[6]==board[8] && board[6]!="" || board[0]==board[3] && board[0]==board[6] && board[0]!="" || board[1]==board[4] && board[1]==board[7] && board[1]!="" || board[2]==board[5] && board[2]==board[8] && board[2]!="" || board[0]==board[4] && board[0]==board[8] && board[0]!="" || board[2]==board[4] && board[2]==board[6] && board[2]!="")) && (board[0] = "O") && (board[4] = "O") && (board[6] = "O")
      puts "player2 a gagné !"   
    else puts "match nul !"
    end
  end

end

