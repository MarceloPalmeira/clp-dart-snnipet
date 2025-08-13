import '../models/Viagem.dart';
import 'dart:io';

// To do 

// Funcao para receber input de Distancia da viagem como String, tentar converter 
// para double e usar try catch para captar erros

// Fazer a funcao acima para cada atributo da classe Viagem, exceto diasDeViagem que
// eh int e deve ser convertido para int...

// Criar funcao para adicionar gastos extras que usara do metodo setGastoExtra
void main(){
  var viagem = Viagem(
    distancia: 100.0,
    consumoCarro: 10.0,
    precoCombustivel: 5.0,
    diasDeViagem: 2,
    gastoDiario: 50.0,
  );

  viagem.getCustoTotal();

}