class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  attr_accessor :value, :case_nr

   	def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
	    @value = ""
	    @case_nr = case_nr
	end
	    	
	def to_s
	# Pour mettre la valeur en string
	self.value = @value
	end

   
    	
    #symbol = X, O ou " "
    #case = {A1, A2, A3, B1, B2, B3, C1, C2, C3}
end

