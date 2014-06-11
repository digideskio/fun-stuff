class Caesar
 
	def initialize(message)
		@message = message
		@upp_index = Array("A".."Z") + Array("A".."Y")
		@low_index = Array("a".."z") + Array("a".."y")
	end
 
	#this method encrypts the message
	def transform(offset)
		result = []
		temp_arr = @message.split(//)
		temp_arr.each do |letter|
 
			if upcase?(letter)
				old_index 	= @upp_index.index(letter)
				new_index 	= old_index + offset
				result 		<<  @upp_index[new_index]
			elsif downcase?(letter)
				old_index 	= @low_index.index(letter)
				new_index 	= old_index + offset			#do lowercase transform
				result 		<< @low_index[new_index]
			else
				result << letter
			end
		end
 
		return result.join
	end
 
	#this method unencrypts a message
	def untransform(offset)
		result = []
		rev_upp_index = @upp_index.reverse
		rev_low_index = @low_index.reverse
		temp_arr = @message.split("")
		temp_arr.each do |letter|
 
			if upcase?(letter)
				old_index 	= rev_upp_index.index(letter)
				new_index 	= old_index + offset
				result 		<< rev_upp_index[new_index]
			elsif downcase?(letter)
				old_index 	= rev_low_index.index(letter)
				new_index 	= old_index + offset			#do lowercase transform
				result 		<< rev_low_index[new_index]
			else
				result << letter
			end
		end
 
		return result.join
	end
 
	def upcase?(letter)
		@upp_index.include?(letter)
	end
 
	def downcase?(letter)
		@low_index.include?(letter)
	end

	def hello
		"Working?"
	end
 
end 

##################START SHOES APP######################

Shoes.app title: "CAESAR CIPHER v1.0" do 
	stack do
		@headline = para "CAESAR CIPHER v1.0"
		@headline.style(stroke:red, align:'center')
	end

	stack do
		@description = para "To encrypt your message enter a maxiumum offset of 25. For a full description of what a Caesar Cipher is read the following article ",
		@link = link('Wikipedia Article', :click => 'http://en.wikipedia.org/wiki/Caesar_cipher')
		@description.style(align:'center')
		@link.style(align:'center')

	
	
		@button = button "Encrypt Text" do
			input = ask "Enter text:"
			off = ask "Enter offset:"
			raw_message=Caesar.new(input)
				stack do
					@orig_headline = para "Your original message"
					para input
					@trans_headline = para "Your encrypted message shifted by #{off.to_i}"
					para raw_message.transform(off.to_i)

					@orig_headline.style(align:'center', underline:'single', weight:'bold', stroke: darkred)
					@trans_headline.style(align:'center', underline:'single', weight:'bold', stroke:dodgerblue)
				end #end stack
		end #end button

		@button = button "Unencrypt Text" do
			input = ask "Enter text:"
			off = ask "Enter offset:"
			raw_message=Caesar.new(input)
				stack do
					@orig_headline = para "Your encrypted message"
					para input
					@trans_headline = para "Your decoded message shifted by #{off.to_i}"
					para raw_message.untransform(off.to_i)

					@orig_headline.style(align:'center', underline:'single', weight:'bold', stroke: darkred)
					@trans_headline.style(align:'center', underline:'single', weight:'bold', stroke:dodgerblue)
				end #end stack
		end #end button

	end #end stack

	class Caesar
		def intialize(message)
			@message = message
		end

		def test
			puts "Is this working?"
		end
	end

end

#Have an introductory paragraph giving brief description of what program does
#Have a button, "Are you ready?"
#On button click bring up the 'ask' prompt
#print the input text
#below print the output text
#Ask, would you like to translate another? How to loop this???