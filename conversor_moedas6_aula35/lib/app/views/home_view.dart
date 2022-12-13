import '../controllers/home_controller.dart';
import 'package:flutter/material.dart';
import '../components/currency_box.dart';
//https://www.google.com/search?client=firefox-b-lm&q=quanto+vale+a+libra+esterlina

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
 
 final TextEditingController toText = TextEditingController();
 final TextEditingController fromText = TextEditingController();
 late HomeController homeController;
/*
  @override
  void initState(){
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }
*/
   HomeViewState () {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    //No HomeViewState nao podemos usar o widget MaterialApp
    //para fazer o app devemos utilizar o Scaffold
    return Scaffold(
      //Tudo é herdado no flutter
      //a configuração feita em um widget
      //influencia outro widget
      body: SingleChildScrollView(
        //O SingleChildScrollView se faz nescessario
        //para nao dar erro na tela ao abrir o teclado.

        child: SizedBox(
          //pegando o tamanho total da tela do celular na largura
          width: MediaQuery.of(context).size.width,

          //pegando o tamanho total da tela do celular na altura
          height: MediaQuery.of(context).size.height,

          //O widget Padding da o tamanho tanto da
          //direita(rigth) quanto da esquerda(left)
          //na horizontal e tambem na vertical
          child: Padding(
            padding: const EdgeInsets.only(
                left: 30, right: 30, top: 100, bottom: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/currency_imagen.png',
                  width: 150, //largura
                  height: 150, //altura
                ), //Image.asset

                //Espaço entre a imagen e a CurrencyBox => Row com o widget SizedBox.
                const SizedBox(height: 30),

                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: homeController.toText,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                  ), //CurrencyBox

/*
                //Definindo uma linha com o widget Row do app dentro do widget Column
                Row(
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
                        height: 50,
                        child: DropdownButton(
                            iconEnabledColor: Colors.amber,
                            isExpanded: true,
                            value: selectVal1,
                            underline: Container(
                              height: 1,
                              color: Colors.blue,
                            ), //Container

                            items: listMenu.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(), //listMenu.map

                            onChanged: (String? value) {
                              //O setState só é habilitado dentro por causa da classe StatefulWidget
                              setState(() {
                                selectVal1 = value;
                              });
                            } //onChanged
                        ), //DropdownButton
                      ), //SizedBox
                    ), //Expanded

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
*/
                //Espaçamento entre a CurrencyBox => Row com SizedBox
                const SizedBox(height: 10), //SizedBox

                CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  controller: homeController.fromText,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                ), //CurrencyBox
/*
                Row(
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
                        height: 50,
                        child: DropdownButton(
                            iconEnabledColor: Colors.amber,
                            isExpanded: true,
                            value: selectVal2,
                            underline: Container(
                              height: 1,
                              color: Colors.blue,
                            ), //Container

                            items: listMenu.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(), //listMenu.map

                            onChanged: (String? value) {
                              //O setState só é habilitado dentro por causa da classe StatefulWidget
                              setState(() {
                                selectVal2 = value;
                              });
                            } //onChanged
                            ), //DropdownButton
                      ), //SizedBox
                    ), //Expanded

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
*/
                //Espaçamento entre a Row e o ElevatedButton com SizedBox
                const SizedBox(height: 30), //SizedBox

                //O ElevatedButton
                //tem que ficar dentro de children
                //no widget Column
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, // background
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),// foreground
                    ),
                    onPressed: () {
                      setState(() {
                        homeController.convert();
                      });
                    }, //onPressed
      
                    child: const Text(
                      'CONVERTER',
                      style: TextStyle(fontSize: 20),
                    ), //Text
                  ), //ElevatedButton
              ], //children
            ), //Column
          ), //Padding
        ), //SizedBox
      ), //SingleChieldScrollView
    ); //Scaffold
  }
}
