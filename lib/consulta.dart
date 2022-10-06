import 'package:boutiquedebolo/bd.dart';
import 'package:boutiquedebolo/componentes.dart';
import 'package:boutiquedebolo/pedido.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaCon extends StatefulWidget {
  @override
  State<TelaCon> createState() => EstadoTelaCon();
}

class EstadoTelaCon extends State<TelaCon> {
  static List<Pedido> relacao = [];

  @override
  void initState() {
    // TODO: implement initState
    pessoasNoBanco();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultar Pedidos"),
      ),
      drawer: Drawer(
        child: Menu(),
      ), 
      body: Center(
          child: Column(children: [
        Row(children: [
          Container(
            color: Colors.grey,
            child: Text("rotulo1"),
            width: 200,
          ),
          Container(
            child: Text("rotulo2"),
            color: Colors.grey,
            width: 200,
          )
        ]),
        for (Pedido pedido in relacao)
          Row(
            children: [
              Container(
                color: Colors.grey,
                child: Text(pessoa.getNome()),
                width: 200,
              ),
              Container(
                child: Text(pessoa.getCpf()),
                color: Colors.grey,
                width: 200,
              ),
            ],
          )
      ])),
    );
  }
}
