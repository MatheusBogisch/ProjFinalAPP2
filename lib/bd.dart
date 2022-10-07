import 'package:boutiquedebolo/consulta.dart';
import 'package:boutiquedebolo/pedido.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void inserirBanco(String c, String p, String r, String t, String o, String nC,
    String fC, String i) async {
  var request =
      http.Request('POST', Uri.parse("http://localhost/flutter/inserir.php"));
  request.bodyFields = {
    "cobertura": c,
    "preco": p,
    "recheio": r,
    "tamanho": t,
    "observacoes": o,
    "nomeCliente": nC,
    "foneCliente": fC,
    "imagem": i
  };
  http.StreamedResponse response = await request.send();
}

pessoasNoBanco() async {
  var response =
      await http.get(Uri.parse("http://localhost/flutter/pedido.php"));
  var dados = jsonDecode(response.body);
  List<Pedido> p = [];
  for (Map x in dados) {
    var novoPedido = Pedido(
        x['cobertura'],
        x['preco'],
        x['recheio'],
        x['tamanho'],
        x['observacoes'],
        x['nomeCliente'],
        x['foneCliente'],
        x['imagem']);
    p.add(novoPedido);
  }
  EstadoTelaCon.relacao = p;
  print(p.toString());
}
