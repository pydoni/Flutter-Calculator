// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$resultadoAtom = Atom(name: 'ControllerBase.resultado');

  @override
  String get resultado {
    _$resultadoAtom.context.enforceReadPolicy(_$resultadoAtom);
    _$resultadoAtom.reportObserved();
    return super.resultado;
  }

  @override
  set resultado(String value) {
    _$resultadoAtom.context.conditionallyRunInAction(() {
      super.resultado = value;
      _$resultadoAtom.reportChanged();
    }, _$resultadoAtom, name: '${_$resultadoAtom.name}_set');
  }

  final _$equacaoExibidaAtom = Atom(name: 'ControllerBase.equacaoExibida');

  @override
  String get equacaoExibida {
    _$equacaoExibidaAtom.context.enforceReadPolicy(_$equacaoExibidaAtom);
    _$equacaoExibidaAtom.reportObserved();
    return super.equacaoExibida;
  }

  @override
  set equacaoExibida(String value) {
    _$equacaoExibidaAtom.context.conditionallyRunInAction(() {
      super.equacaoExibida = value;
      _$equacaoExibidaAtom.reportChanged();
    }, _$equacaoExibidaAtom, name: '${_$equacaoExibidaAtom.name}_set');
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic alterador(dynamic valor) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.alterador(valor);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'resultado: ${resultado.toString()},equacaoExibida: ${equacaoExibida.toString()}';
    return '{$string}';
  }
}
