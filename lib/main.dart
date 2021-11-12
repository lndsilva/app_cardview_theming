import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Criando a classe sem estado e chamando
//a classe do aplicativo com estado
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cards',
      debugShowCheckedModeBanner: false,
      //colocar um tema
      home: MyHomePage(
        title: 'Flutter Card Demo',
      ),
    );
  }
}

//Criando a classe de estado do aplicativo
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//Criando a Janela do Aplicativo
class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Cafeteria'),
                  subtitle: Text(
                    'O melhor café de São Paulo',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                //espaçamento entre os objetos
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Servimos todos os tipos de café da melhor qualidade, ambiente aconchegante.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        //ação do botão
                      },
                      child: const Text('SHARED'),
                    ),
                    FlatButton(
                      onPressed: () {
                        //Ação do botão
                      },
                      child: const Text('FAVORITE'),
                    ),
                  ],
                ),
                Image.asset('imagens/cafe.jpg'),
              ],
            ),
          ),
          //card 2
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Café'),
                  subtitle: Text(
                    'Café de excelente qualidade',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Aroma forte e de boa qualidade',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        //Ação do botão
                      },
                      child: const Text('SHARED'),
                    ),
                    FlatButton(
                      onPressed: () {
                        //Ação do Botão
                      },
                      child: const Text('FAVORITE'),
                    ),
                  ],
                ),
                Image.asset('imagens/cafe.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
