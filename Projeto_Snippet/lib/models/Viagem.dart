const double TAXA_DE_SERVICO = 0.1;

class Viagem {

  double distancia;
  double consumoCarro;
  double precoCombustivel;

  int diasDeViagem;
  double gastoDiario;
  double gastoExtra;

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
  double calcularCustoCombustivel() {
    return (distancia / consumoCarro) * precoCombustivel;
  }
  
  double calcularGastoDiarios(){
    return this.diasDeViagem * gastoDiario;
  }
  
  double getCustoTotal(){
    double custoCombustivel = calcularCustoCombustivel();
    double gastoDiario = calcularGastoDiarios();

    double custoBaseDaViagem = (custoCombustivel + gastoDiario + gastoExtra);
    double custoDaViagemComTaxaDeServico = custoBaseDaViagem * (1 + TAXA_DE_SERVICO);
    print("Custo Total da Viagem: R\$ ${custoDaViagemComTaxaDeServico.toStringAsFixed(2)}");
    print("---Custo com Combustível: R\$ ${custoCombustivel.toStringAsFixed(2)}");
    print("---Gasto Diário: R\$ ${gastoDiario.toStringAsFixed(2)}");
    print("---Gasto Extra: R\$ ${gastoExtra.toStringAsFixed(2)}");
    print("---Taxa de Serviço: R\$ ${(custoDaViagemComTaxaDeServico - custoBaseDaViagem).toStringAsFixed(2)}");
    return (custoDaViagemComTaxaDeServico);
  }

}