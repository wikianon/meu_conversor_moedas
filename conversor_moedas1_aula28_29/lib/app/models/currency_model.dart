import 'package:flutter/material.dart';

class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  //Para resolver o erro de variavel nao inicializada
  //clicar encima da variavel com erro 
  //vai aparecer uma lampada amarela no vscode
  //depois escolha: 
  //Create construtor for final fields
  CurrencyModel(this.name, this.real, this.dolar, this.euro, this.bitcoin);

  static List<CurrencyModel> getCurrency(){
    return <CurrencyModel>[
      CurrencyModel('Real', 1.0, 0.18, 0.25, 0.000016),
      CurrencyModel('Dolar', 5.65, 3.0, 0.65, 0.000016),
      CurrencyModel('Euro', 6.62, 3.15, 3.0, 0.000016),
      CurrencyModel('Biticoin', 64120.52, 12330.30, 9620.54, 1),
    ];//<CurrencyModel>[]
  } //getCurrency
  
}