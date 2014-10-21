test1,test2 = [1,2,3],[4,5,6]

def construct_hash_from_two_arrays(first_array,second_array)
  merged_arrays = first_array.zip(second_array).flatten
  Hash[*merged_arrays]
end

p construct_hash_from_two_arrays(test1,test2)