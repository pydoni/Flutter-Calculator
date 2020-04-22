import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';
import 'WidgetBotao.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final Color c1 = Colors.black45;

  final Color c2 = Colors.cyan;

  final Color c3 = Colors.deepOrangeAccent;

  final calculadora = Controller();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff363c41),
        body: Column(

          children: <Widget>[
            Container(
              height: 170,
              color: Color(0xffb2d8a5),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 50,
                    right: 1,
                    child: Observer(builder: (_){
                      return Text(
                        calculadora.resultado,
                        style: TextStyle(
                          fontFamily: 'digital',
                          fontSize: 30,
                        ),
                      );
                    },),

                  ),
                  Positioned(
                    bottom: 3,
                    right: 1,
                    child: Observer(builder: (_){
                      return Text(
                        calculadora.equacaoExibida,
                        style: TextStyle(
                          fontFamily: 'digital',
                          fontSize: 60,
                        ),
                      );
                    },),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 10.0,
              color: Colors.grey,
            ),
            Row(

              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: botao("Clear", c2, calculadora),
                ),

                Flexible(
                  flex: 1,
                  child: botao("⌫", c2, calculadora),
                ),
                Flexible(
                  flex: 1,
                  child: botao("=", c2, calculadora),
                ),
              ],
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    botao("(", c3, calculadora),
                    botao(")", c3, calculadora),
                    botao("^", c3, calculadora),
                    botao("√", c3, calculadora),
                  ],
                ),
                TableRow(
                  children: [
                    botao("7", c1, calculadora),
                    botao("8", c1, calculadora),
                    botao("9", c1, calculadora),
                    botao("+", c3, calculadora),
                  ],
                ),
                TableRow(
                  children: [
                    botao("4", c1, calculadora),
                    botao("5", c1, calculadora),
                    botao("6", c1, calculadora),
                    botao("-", c3, calculadora),
                  ],
                ),
                TableRow(
                  children: [
                    botao("1", c1, calculadora),
                    botao("2", c1, calculadora),
                    botao("3", c1, calculadora),
                    botao("×", c3, calculadora),
                  ],
                ),
                TableRow(
                  children: [
                    botao("0", c1, calculadora),
                    botao(".", c1, calculadora),
                    botao("00", c1, calculadora),
                    botao("÷", c3, calculadora),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




