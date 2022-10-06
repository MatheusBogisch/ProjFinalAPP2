import 'package:exemplo/bd.dart';
import 'package:exemplo/componentes.dart';
import 'package:flutter/material.dart';

class TelaCad extends StatefulWidget {
  @override
  State<TelaCad> createState() => EstadoTelaCad();
}

class EstadoTelaCad extends State<TelaCad> {
  TextEditingController n = TextEditingController();
  TextEditingController c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar Pessoa"),
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Center(
        child: Column(
          children: [
            Campo(controlador: n, rotulo: "Nome"),
            Campo(controlador: c, rotulo: "CPF"),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextButton(
                onPressed: () {
                  inserirBanco(n.text, c.text);
                  showSuccessMessage(context, TelaCad());
                },
                child: Text(
                  "CONFIRMAR",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shadowColor: Colors.black,
                  elevation: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
