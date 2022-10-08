import 'package:boutiquedebolo/cadastro.dart';
import 'package:boutiquedebolo/consulta.dart';
import 'package:boutiquedebolo/inicio.dart';
import 'package:boutiquedebolo/main.dart';
import 'package:flutter/material.dart';

class Campo extends StatelessWidget {
  TextEditingController controlador;
  String rotulo;
  var icone;
  Campo({Key? key, required this.controlador, required this.rotulo, required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
              labelText: rotulo,
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue.shade300),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue.shade300),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              prefixIcon: Icon(Icons.cake , color: Colors.white)),
          controller: controlador,
        ));
  }
}

class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(padding: EdgeInsets.all(8)),
        TextButton(
            child: Text(
              "inicio",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            }),
               Padding(padding: EdgeInsets.all(8)),
        TextButton(
            child: Text(
              "Cadastrar",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TelaCad()));
            }),
               Padding(padding: EdgeInsets.all(8)),
        TextButton(
            child: Text(
              "Consultar",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TelaCon()));
            }),
      ],
    );
  }
}

//método para operação de cadastro
void showSuccessMessage(BuildContext context, Widget transf) async {
  await showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text("Transação Efetuada com sucesso :)"),
      actions: <Widget>[
        FloatingActionButton(
            onPressed: () => Navigator.pop(ctx), child: Text("Ok"))
      ],
    ),
  );
  Navigator.pop(context, transf);
}
