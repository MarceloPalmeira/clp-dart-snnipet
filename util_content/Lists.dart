void main(){
  // Array ->
  List <int> numeros = [1, 2, 3, 4, 5];
  print("Numeros: $numeros");
  numeros.add(4);
  print("Numeros Atualizados: $numeros\n");

  List <String> nomes = ["João", "Maria", "José"];
  print("Nomes: $nomes");
  nomes.add("Ana");
  print("Nomes Atualizados: $nomes\n");

  List <double> alturas = [1.70, 1.65, 1.80];
  print("Alturas: $alturas");
  alturas.add(1.75);
  print("Alturas Atualizadas: $alturas\n");

  List <bool> booleanos = [true, false];
  print("Booleanos $booleanos");
  booleanos.add(true);
  print("Booleanos atualizados $booleanos");

}