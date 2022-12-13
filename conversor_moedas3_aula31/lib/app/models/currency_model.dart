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
  CurrencyModel({required this.name, required this.real, required this.dolar, required this.euro, required this.bitcoin});
  
  static List<CurrencyModel> getCurrency(){
    return <CurrencyModel>[
      CurrencyModel(name: 'Real', real: 1.0, dolar: 0.18, euro: 0.25, bitcoin: 0.000016),
      CurrencyModel(name: 'Dolar', real: 5.65, dolar: 3.0, euro: 0.65, bitcoin: 0.000016),
      CurrencyModel(name: 'Euro', real: 6.62, dolar: 3.15, euro: 3.0, bitcoin: 0.000016),
      CurrencyModel(name: 'Biticoin', real: 64120.52, dolar: 12330.30, euro: 9620.54, bitcoin: 1),
    ];//<CurrencyModel>[]
  } //getCurrency
  
}