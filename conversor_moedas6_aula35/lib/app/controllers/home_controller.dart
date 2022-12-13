import 'package:flutter/material.dart';
import '../models/currency_model.dart';

class HomeController{

  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  //pega o valor digitado na tela do app
  late final TextEditingController toText;
  late final TextEditingController fromText;
 
  //Construtor nomeado requer um parametro nomeado.
  //do tipo toText: e fromText:
  HomeController({required this.toText, required this.fromText})
  {
    currencies = CurrencyModel.getCurrency();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert(){

    //Pegando o textoque foi digitado no app.
    String text = toText.text;
    
    //replaceAll troca o numerodigitado com virgula para ponto
    double valor = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double retornaValor = 0;
    
    if(fromCurrency.name == 'Real') 
    {
      retornaValor = (valor * toCurrency.real);
    }
    else
    if(fromCurrency.name == 'Dolar')
    {
      retornaValor = (valor*toCurrency.dolar);
    }
    else
    if(fromCurrency.name == 'Euro')
    {
      retornaValor = (valor*toCurrency.euro);
    }
    else
    if(fromCurrency.name == 'Bitcoin')
    {
      retornaValor = (valor*toCurrency.bitcoin);
    }

    fromText.text = retornaValor.toStringAsFixed(2);
  }
}