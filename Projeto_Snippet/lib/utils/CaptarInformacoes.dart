import 'dart:io';

abstract class classeDeImprimirMensagens{

  void printarMensagem();
  static String variavel = "";

}

class imprimirMensagemDeDistancia extends classeDeImprimirMensagens{

  @override
  void printarMensagem(){
    print("Digite a distancia da viagem em KM");
  }

  static String variavel = "Distancia";
}

class imprimirMensagemDeDuracao extends classeDeImprimirMensagens{

  @override
  void printarMensagem(){
    print("Digite a duracao da viagem em dias");
  }
  static String variavel = "Duracao";
}

class imprimirMensagemDePrecoCombustivel extends classeDeImprimirMensagens{

  @override
  void printarMensagem(){
    print("Digite o preco do combustivel em R\$");
  }
  static String variavel = "PrecoCombustivel";
}

class imprimirMensagemDeConsumo extends classeDeImprimirMensagens{
  @override
  void printarMensagem(){
    print("Digite o consumo do carro em KM/L");
  }
  static String variavel = "Consumo";
}


class imprimirMensagemDeCustoDiario extends classeDeImprimirMensagens{

  @override
  void printarMensagem(){
    print("Digite o custo diario da viagem em R\$");
  }
  static String variavel = "CustoDiario";

}


num inputParaViagem(dynamic objeto){

  // Pode gerar erro em tempo de execucao se o objeto passado nao tiver esse metodo
  objeto.printarMensagem();
  
  String? input = stdin.readLineSync();

  try {
    // Conversao Explicita de String do input para Num.
    // A partir do momento que vira Num, existe a conversao implicita para double ou int.
    return num.parse(input!);
  } catch (Error) {
    print("Erro $Error");
    print("Entrada inválida. Por favor, digite um número.");
    return inputParaViagem(objeto);
  }
}