// "Hash from two arrays" problem from http://rosettacode.org/wiki/Hash_from_two_arrays
// #######################################################################################
// Using two Arrays of equal length, create a Hash object where the elements from one 
// array (the keys) are linked to the elements of the other (the values) 

var arr1 = [1,2,3];
var arr2 = ['one','two','three'];
var hsh = {};

function build_hash(first_array,second_array){
  for (var i = 0; i < first_array.length; i+=1) {
    hsh[first_array[i]] = second_array[i];
  };
  return hsh;
}


console.log(build_hash(arr1,arr2)); //{ '1': 'one', '2': 'two', '3': 'three' }