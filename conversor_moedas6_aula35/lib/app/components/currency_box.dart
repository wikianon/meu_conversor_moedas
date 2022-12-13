import '../models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox({super.key, required this.items, required this.controller, required this.selectedItem, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      //Colocando o Expanded alinhado para cima
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //O widget Expanded representa um quadro do total
        //da tela onde por padrao ele consome 50% da tela
        //Definindo uma linha de 50% no meio da tela
        //Funciona como um padrao flex basicamente o mesmo padrao do css
        Expanded(
          flex: 1,
          //O DropdownButton é um Widget que ao ser clicado
          //exibe para o usuário uma lista de itens,
          //dos quais apenas um pode ser selecionado.
          //Muitas vezes é utilizado para listar as cidades
          //e estados em um cadastro de clientes
          child: SizedBox(
            height: 56, //Deixa a linha do Expanded 1 e o Expanded 2 alinhadas uma lado a lado da outra. 
            child: DropdownButton<CurrencyModel>(
                //Para que a linha fique vermelha de um lado do expanded
                //é nescessario definir a cor igual no expanded 1
                iconEnabledColor: Colors.blue, //Define a cor do botao de listar Elementos no primeiro expanded
                isExpanded: true,
                value: selectedItem,
                underline: Container(
                  height: 1,
                  color: Colors.red, //Define a cor da linha do primeiro expanded
                ), //Container

                items: items.map(
                  (e) => DropdownMenuItem(value: e, child: Text(e.name))
                  ).toList(), //items.map
                  onChanged: onChanged,
                ), //DropdownButton
          ), //SizedBox
        ), //Expanded
        const SizedBox(width: 30), //Espaço ente as linhas do Expanded 1 e o Expanded 2 na divisao da tela
        //O widget Expanded representa um quadro do total
        //da tela onde por padrao ele consome 50% da tela
        //Definindo uma linha de 50% no meio da tela
        //Funciona como um padrao flex basicamente o mesmo padrao do css
        Expanded(
          //O flex define a quantidade de quadrados neste caso
          //ele esta pegando 2 totalizando 100%
              flex: 2,
              child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                ) //UnderlineInputBorder
              ) //InputDecoration
            ), //TextField
        ), //Expanded
      ], //children
    ); //Row
  }
}