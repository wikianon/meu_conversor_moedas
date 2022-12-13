import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatefulWidget {
  
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const List<String> listMenu = <String>['Real', 'Dolar', 'Euro', 'Bitcoin'];
  //var listMenu = ['Real', 'Dolar', 'Euro', 'Bitcoin'];

  String? selectVal = 'Real';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Tudo é herdado no flutter
      //a configuração feita em um widget
      //influencia outro widget
      body: SizedBox(
        //pegando o tamanho total da tela do celular na largura
        width: MediaQuery.of(context).size.width,

         //pegando o tamanho total da tela do celular na altura
        height: MediaQuery.of(context).size.height,

        //O widget Padding da o tamanho tanto da 
        //direita(rigth) quanto da esquerda(left)
        //na horizontal na vertical
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 20),
          child: Column(
              children: [
                Image.asset(
                  'assets/images/currency_imagen.png',
                  width: 150, //largura
                  height: 200, //altura
                  ), //Image.asset
                
                SizedBox(
                  //pegando o tamanho total da tela do celular na largura
                  width: MediaQuery.of(context).size.width,
                  
                  child: Row(
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
                        child: DropdownButton(
                          value: selectVal,
                          underline: Container(
                            height: 1,
                            color: Colors.blue,
                          ), //Container
                          
                          items: listMenu.map((String items){ 
                              return DropdownMenuItem(value: items, child: Text(items),); 
                            }
                          ).toList(), //listMenu.map

                          onChanged: (String? value){
                              //O setState só é habilitado dentro por causa da classe StatefulWidget
                              setState((){
                               selectVal = value;
                              });
                            } //onChanged
                          ), //DropdownButton
                        ), //Expanded
                        
                        //Definindo o espaçamento do expanded com SizedBox
                        SizedBox(height: 10,), //SizedBox

                      //O widget Expanded representa um quadro do total
                      //da tela onde por padrao ele consome 50% da tela
                      //Definindo uma linha de 50% no meio da tela
                      //Funciona como um padrao flex basicamente o mesmo padrao do css
                      Expanded(
                        //O flex define a quantidade de quadrados neste caso
                        //ele esta pegando 2 totalizando 100%
                        flex: 2,
                        child: TextField(
                        //InputDecoration vai dar erro de relacionado a tamanho
                        //para resolver é preciso adicionar um SizedBox
                        //acima do widget Row 
                        decoration: InputDecoration(),
                       ), //TextField
                      ), //Expanded
                    ], //children
                  ), //Row
                ), //SizedBox

                //Espaçamento entre o botao 
                //ElevatedButton e o Expanded
                //com SizedBox
                SizedBox(height: 30,), //SizedBox
                //O ElevatedButton 
                //tem que ficar dentro de children
                //no widget Column
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text('CONVERTER'
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                   ), //TextStyle
                  textAlign: TextAlign.center,
                 ), //Text
                ), //ElevatedButton
              ], //children
          ),
        ),
      ), //Column
    ); //Scaffold
  }
}
