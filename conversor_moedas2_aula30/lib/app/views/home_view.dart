import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        child: Column(
            children: [
              Image.asset('assets/images/currency_imagen.png'),
              
              SizedBox(
                //pegando o tamanho total da tela do celular na largura
                width: MediaQuery.of(context).size.width,
                
                child: Row(
                  children: [
                    //O widget Expanded expand ao maximo
                    Expanded(
                    //O DropdownButton é um Widget que ao ser clicado 
                    //exibe para o usuário uma lista de itens, 
                    //dos quais apenas um pode ser selecionado. 
                    //Muitas vezes é utilizado para listar as cidades 
                    //e estados em um cadastro de clientes
                      child: DropdownButton(
                        items: [], 
                        onChanged: (value){}
                        ), //DropdownButton
                      ), //Expanded

                    Expanded(
                      child: TextField(
                      //vai dar erro de relacionado a tamanho
                      //para resolver é preciso adicionar um SizedBox
                      //acima do widget Row 
                      decoration: InputDecoration(),
                     ), //TextField
                    ), //Expanded
                  ], //children
                ), //Row
              ), //SizedBox
              
              //O ElevatedButton 
              //tem que ficar dentro de children
              //no widget Column
              ElevatedButton(
                onPressed: (){}, 
                child:  Text('CONVERTER'
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                   ), //TextStyle
                  textAlign: TextAlign.center,
                 ), //Text
              ), //ElevatedButton
            ], //children
        ),
      ), //Column
    ); //Scaffold
  }
}
