import 'package:flutter/material.dart';
import 'controller.dart';

class botao extends StatelessWidget {
  final String valor;
  final Color cor;
  final Controller controller;

  botao(this.valor, this.cor,this.controller);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height * 0.1,
        child: FlatButton(
          onPressed: (){
            controller.alterador(valor);

          },
          color: cor,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              valor,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
