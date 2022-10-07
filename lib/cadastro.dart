import 'package:boutiquedebolo/bd.dart';
import 'package:boutiquedebolo/componentes.dart';
import 'package:flutter/material.dart';

class TelaCad extends StatefulWidget {
  @override
  State<TelaCad> createState() => EstadoTelaCad();
}

class EstadoTelaCad extends State<TelaCad> {
  TextEditingController c = TextEditingController();
  TextEditingController p = TextEditingController();
  TextEditingController r = TextEditingController();
  TextEditingController t = TextEditingController();
  TextEditingController o = TextEditingController();
  TextEditingController nC = TextEditingController();
  TextEditingController fC = TextEditingController();
  TextEditingController i = TextEditingController();
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
            Campo(controlador: c, rotulo: "Cobertura"),
            Campo(controlador: p, rotulo: "Preço"),
            Campo(controlador: r, rotulo: "Recheio"),
            Campo(controlador: t, rotulo: "Tamanho"),
            Campo(controlador: o, rotulo: "Observações"),
            Campo(controlador: nC, rotulo: "Nome do Cliente"),
            Campo(controlador: fC, rotulo: "Fone do cliente"),
            Campo(controlador: i, rotulo: "Imagem"),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextButton(
                onPressed: () {
                  inserirBanco(c.text, p.text,r.text,t.text,o.text,nC.text,fC.text,i.text);
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
