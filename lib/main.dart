import 'package:boutiquedebolo/bd.dart';
import 'package:boutiquedebolo/botao.dart';
import 'package:boutiquedebolo/consulta.dart';
import 'package:boutiquedebolo/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Aula de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pessoasNoBanco();
    print(EstadoTelaCon.relacao);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          Image.asset("assets/images/logo.png"),
          Column(
            children: [
              Botao(
                  nome: "BEM-VINDA",
                  apertar: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  }),
            ],
          )
        ],
      ),
    );
  }
}
