import '../models/Viagem.dart';
import 'CaptarInformacoes.dart';
import 'dart:io';

// To do 

// Funcao para receber input de Distancia da viagem como String, tentar converter 
// para double e usar try catch para captar erros

List<classeDeImprimirMensagens> classesDeMensagem = [
  imprimirMensagemDeDistancia(),
  imprimirMensagemDeConsumo(),
  imprimirMensagemDePrecoCombustivel(),
  imprimirMensagemDeDuracao(),
  imprimirMensagemDeCustoDiario(),
];


// eh int e deve ser convertido para int...

// Criar funcao para adicionar gastos extras que usara do metodo setGastoExtra
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

  
  viagem.getCustoTotal();

}