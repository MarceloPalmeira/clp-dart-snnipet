# Requisitos

## O que fizemos

- Inferencia/Declaracao de tipos estatica (na classe Viagem.dart).
- Inferencia/Declaracao de tipo dinamica (na CalculadoraViagem.dart).
- Vinculacao estatica em todo o sistema (eh o padrao).

- Case sensitive mostrado na CalculadoraViagem.dart pois existe uma variavel com 
  nome viagem usando o construtor Viagem, ou seja, viagem e Viagem sao diferenciados
  pela linguagem.

  -- Conversao Explicita de Tipos
    - Usada em Viagem.dart para exibir apenas 2 digitos do double, para isso, usamos 
      o metodo de conversao .toStringAsFixed(2).
    - Usada para receber o input em CalculadoraViagem.dart 

  -- Escopos
    - Escopo de classe em Viagem.dart
    - Escopo de funcao usado na main e na funcao inputParaViagem().
    - Escopo de try catch implementado no inputParaViagem()
    - Escopo de loop for na CalculadoraViagem.dart para alimentar a lista de objetos com mensagem de Input

  - Conversao de tipo explicita usada na hora dos inputs, converter de string para num
    - Tambem usada na hora de passar os dias, que converte de num para string, e de string para int.

  - Conversao implicita
    - Usada no tipo Num, que decide entre int e double

  - Vinculacao dinamica implementada no metodo inputParaViagem
