import 'package:mobx/mobx.dart';
import 'package:math_expressions/math_expressions.dart';
part 'controller.g.dart';


class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
  @observable
  String resultado = "0";

  @observable
  String equacaoExibida = "0";

  String equacaoCalculada;

  @action
  alterador(valor){
    switch (valor) {
      case "Clear":
        {
          print("none");
          resultado = "0";
          equacaoExibida = "0";
          equacaoCalculada = "";
        }
        break;

      case "=":
        {
          print("=");
          resultado = equacaoExibida;
          equacaoCalculada = equacaoExibida;
          equacaoCalculada = equacaoCalculada.replaceAll('×', '*');
          equacaoCalculada = equacaoCalculada.replaceAll('÷', '/');
          try{
            Parser p = Parser();
            Expression exp = p.parse(equacaoCalculada);

            ContextModel cm = ContextModel();
            equacaoExibida = '${exp.evaluate(EvaluationType.REAL, cm)}';
            print(equacaoExibida);
          }
          catch(e){
            equacaoExibida = "Error";
            print(equacaoExibida);
          }

        }
        break;

      case "⌫":
        {
          print("⌫");
          equacaoExibida  = equacaoExibida.substring(0, equacaoExibida.length - 1);
          if(equacaoExibida == ""){
            equacaoExibida = "0";
          }
        }
        break;
      default:
        {
          if(equacaoExibida == "0"){
            equacaoExibida = "";
          }

          if (valor == "÷"){
            equacaoExibida += "/";
          }else if(valor == "×"){
            equacaoExibida += "*";
          }
           else{
            print(valor);
            equacaoExibida += valor ;
            print(equacaoExibida);
          }



        }


    }
  }
}