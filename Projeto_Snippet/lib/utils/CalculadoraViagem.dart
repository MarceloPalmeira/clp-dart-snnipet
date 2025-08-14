import '../models/Viagem.dart';
import 'CaptarInformacoes.dart';


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

  
  viagem.getCustoTotal();

}