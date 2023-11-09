import 'dart:io';
import 'package:imc/model/imc_model.dart';

void main(List<String> arguments) {
  String? name;
  double height, weight;

  print('Digite seu nome: ');
  name = stdin.readLineSync();
  if (name != null && name.isNotEmpty) {
    try {
      print('Digite sua altura (m)');
      String? heightInput = stdin.readLineSync();
      (heightInput == null || heightInput.isEmpty)
          ? throw FormatException('A altura não pode ser vazia')
          : height = double.parse(heightInput);

      print('Digite seu peso (kg): ');
      String? weightInput = stdin.readLineSync();
      (weightInput == null || weightInput.isEmpty)
          ? throw FormatException('O peso não pode ser vazio')
          : weight = double.parse(weightInput);

      Imc imc = Imc(name: name, weight: weight, height: height);

      print('+-------------------------------------------+');
      print(' Nome: ${imc.name}');
      print(' Altura: ${imc.height}');
      print(' Peso: ${imc.weight}');
      print(' IMC: ${imc.imc}');
      print(' Classificação: ${imc.classification}');
      print('+-------------------------------------------+');
    } catch (e) {
      print('Erro: digite um valor válido, $e\n');
      main(arguments);
    }
  } else {
    print('Nenhuma entrada fornecida');
  }
}
