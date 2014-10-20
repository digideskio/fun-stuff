# ABC_problem from http://rosettacode.org/wiki/ABC_Problem
###########################################################
# You are given a collection of ABC blocks. Just like the ones you had 
# when you were a kid. There are twenty blocks with two letters on each
# block. You are guaranteed to have a complete alphabet amongst all sides 
# of the blocks. The goal of this task is to write a function that takes 
# a string and can determine whether you can spell the word with the given 
# collection of blocks. 

#     Once a letter on a block is used that block cannot be used again
#     The function should be case-insensitive
#     Show your output on this page for the following words: 

def can_you_make_this_word?(input)
	letters = input.upcase.split('')
	blocks = [["B","O"],["X","K"],["D","Q"],["C","P"],["N","A"],["G","T"],["R","E"],["T","G"],
					["Q","D"],["F","S"],["J","W"],["H","U"],["V","I"],["A","N"],["O","B"],["E","R"],
					["F","S"],["L","Y"],["P","C"],["Z","M"]]
	cannot_make_word = false

	#go thru each letter in array. if a match is found remove the match
	#from the array.
	letters.each do |letter|
		first_side_match = blocks.assoc(letter)
		second_side_match = blocks.rassoc(letter)
		if (first_side_match)
			block_position = blocks.index(first_side_match)
			blocks.delete_at(block_position)
		elsif (second_side_match && first_side_match.nil?)
			block_position = blocks.index(second_side_match)
			blocks.delete_at(block_position)
		elsif (second_side_match.nil? && first_side_match.nil?)
			cannot_make_word = true
		end #end if loop
	end #end each block
	cannot_make_word  ? "FALSE" : "TRUE"
end #end method