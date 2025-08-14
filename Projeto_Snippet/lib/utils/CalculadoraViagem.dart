import '../models/Viagem.dart';
import 'CaptarInformacoes.dart';
import 'dart:io';

List<classeDeImprimirMensagens> classesDeMensagem = [
  imprimirMensagemDeDistancia(),
  imprimirMensagemDeConsumo(),
  imprimirMensagemDePrecoCombustivel(),
  imprimirMensagemDeDuracao(),
  imprimirMensagemDeCustoDiario(),
];

void main(){

  List<num> valoresParaViagem = [];

  for (var object in classesDeMensagem) {
    num valor = inputParaViagem(object);
    valoresParaViagem.add(valor);
  }

  var viagem = Viagem(
    distancia: valoresParaViagem[0],
    consumoCarro: valoresParaViagem[1],
    precoCombustivel: valoresParaViagem[2],
    diasDeViagem: int.parse(valoresParaViagem[3].toString()),
    gastoDiario: valoresParaViagem[4],
  );

  print("Sua viagem terá algum gasto Extra? (y/n)");
  String? input = stdin.readLineSync();

  // Bloco de If e Else
  if(input == "y"){
    print("Digite o valor do gasto extra:");
    String? gastoExtraInput = stdin.readLineSync();
    if(gastoExtraInput != null && gastoExtraInput.isNotEmpty){
      viagem.setGastoExtra(double.parse(gastoExtraInput));
    }
  }

  viagem.getCustoTotal();

}