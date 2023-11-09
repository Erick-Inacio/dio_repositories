import 'dart:math';
import 'package:imc/model/person_model.dart';

class Imc extends Person {
  late double imc;

  Imc({
    required String name,
    required double weight,
    required double height,
  }) : super(
          height: height,
          name: name,
          weight: weight,
        ) {
    if (weight == 0) {
      throw Exception('Digite um valor diferente de 0');
    }
    imc = calcImc();
    classification = calcClassification();
  }

  double calcImc() {
    int aux = ((weight / pow(height, 2)) * 100).round();
    return aux / 100;
  }

  String calcClassification() {
    if (imc < 15.9) {
      return 'Magreza grave';
    } else if (imc < 16.9) {
      return 'Magreza moderada';
    } else if (imc < 18.4) {
      return 'Magreza leve';
    } else if (imc < 24.9) {
      return 'Saudável';
    } else if (imc < 29.9) {
      return 'Sobrepeso';
    } else if (imc < 34.9) {
      return 'Obesidade Grau I';
    } else if (imc < 39.9) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III (mórbida)';
    }
  }
}
