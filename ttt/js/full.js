Array.prototype.fullArray = function(){
  for(var i=0;i<this.length;i+=1){
    console.log("Index[" + i + "] " + this[i]);
  }
}

console.log(self.Board.fullArray())

---------------------------

function fullArray(array){
  for(var i=0;i<array.length;i+=1){
    console.log("Index[" + i + "] " + array[i]);
  }
}

fullArray(self.Board)