# "Hash from two arrays" problem from http://rosettacode.org/wiki/Hash_from_two_arrays
#######################################################################################
#Using two Arrays of equal length, create a Hash object where the elements from one 
# array (the keys) are linked to the elements of the other (the values) 

test1,test2 = [1,2,3],[4,5,6]

def construct_hash_from_two_arrays(first_array,second_array)
  merged_arrays = first_array.zip(second_array).flatten
  Hash[*merged_arrays]
end

construct_hash_from_two_arrays(test1,test2) #=>{1=>4, 2=>5, 3=>6}