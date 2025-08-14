const double TAXA_DE_SERVICO = 0.1;

class Viagem {

  num distancia;
  num consumoCarro;
  num precoCombustivel;

  int diasDeViagem;
  num gastoDiario;
  num gastoExtra;

  Viagem(
    {
    required this.distancia,
    required this.consumoCarro,
    required this.precoCombustivel,
    required this.diasDeViagem,
    required this.gastoDiario,
    this.gastoExtra = 0.0,
  });

  void setGastoExtra(double gastoExtra){
    this.gastoExtra = gastoExtra;
  }
  num  calcularCustoCombustivel() {
    return (distancia / consumoCarro) * precoCombustivel;
  }
  
  num calcularGastoDiarios(){
    return this.diasDeViagem * gastoDiario;
  }
  
  num getCustoTotal(){
    num custoCombustivel = calcularCustoCombustivel();
    num gastoDiario = calcularGastoDiarios();

    num custoBaseDaViagem = (custoCombustivel + gastoDiario + gastoExtra);
    num custoDaViagemComTaxaDeServico = custoBaseDaViagem * (1 + TAXA_DE_SERVICO);
    print("Custo Total da Viagem: R\$ ${custoDaViagemComTaxaDeServico.toStringAsFixed(2)}");
    print("---Custo com Combustível: R\$ ${custoCombustivel.toStringAsFixed(2)}");
    print("---Gasto Diário: R\$ ${gastoDiario.toStringAsFixed(2)}");
    print("---Gasto Extra: R\$ ${gastoExtra.toStringAsFixed(2)}");
    print("---Taxa de Serviço: R\$ ${(custoDaViagemComTaxaDeServico - custoBaseDaViagem).toStringAsFixed(2)}");
    return (custoDaViagemComTaxaDeServico);
  }

}