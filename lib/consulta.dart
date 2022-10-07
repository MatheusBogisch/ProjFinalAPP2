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
            child: Text("Cobertura"),
            width: 60,
          ),
          Container(
            child: Text("Preço"),
            color: Colors.grey,
            width: 40,
          ),
          Container(
            child: Text("Recheio"),
            color: Colors.grey,
            width: 70,
          ),
          Container(
            child: Text("Tamanho"),
            color: Colors.grey,
            width: 70,
          ),
          Container(
            child: Text("Observaçoes"),
            color: Colors.grey,
            width: 90,
          ),
          Container(
            child: Text("Nome do cliente"),
            color: Colors.grey,
            width: 100,
          ),
          Container(
            child: Text("Fone do cliente"),
            color: Colors.grey,
            width: 100,
          ),
          Container(
            child: Text("Imagem"),
            color: Colors.grey,
            width: 50,
          )
        ]),
        for (Pedido pedido in relacao)
          Row(
            children: [
              Container(
                color: Colors.grey,
                child: Text(pedido.getCobertura()),
                width: 200,
              ),
              Container(
                child: Text(pedido.getPreco()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pedido.getRecheio()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pedido.getTamanho()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pedido.getObservacoes()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pedido.getNomeCliente()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pedido.getFoneCliente()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pedido.getImagem()),
                color: Colors.grey,
                width: 200,
              ),
            ],
          )
      ])),
    );
  }
}
