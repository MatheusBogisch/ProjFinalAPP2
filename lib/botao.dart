import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Botao extends StatelessWidget {
  var apertar;
  String nome;
  Botao({Key? key, required this.nome, required this.apertar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Padding(
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: apertar,
        child: Text(
          nome,
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.pink,
            shadowColor: Colors.black,
            elevation: 15),
      ),
    );
  }
}

class BotaoR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "OK",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 243, 33, 240)),
      ),
    );
  }
}
