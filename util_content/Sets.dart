void main(){
  //Set
  var names = <String>{"João"};
  print("Names Set: $names");
  names.add("Maria");
  print("Names Set Updated: $names");

  Set<int> numbers = {1, 2, 3};
  print("Numbers Set: $numbers");
  numbers.add(4);
  print("Numbers Set Updated: $numbers");
}