import 'package:imc/model/imc_model.dart';
import 'package:test/test.dart';

void main() {
  test('IMC', () {
    Imc imc = Imc(name: 'Erick', weight: 89.4, height: 1.73);
    expect(imc.imc, equals(29.87));
  });

  test('IMC 2', () {
    Imc imc = Imc(name: 'Erick', weight: 74.3, height: 1.73);
    expect(imc.imc, equals(24.83));
  });

  test('IMC 3', () {
    Imc imc = Imc(name: 'Erick', weight: 74.3, height: 2);
    expect(imc.imc, equals(18.58));
  });

  test('IMC 4', () {
    Imc imc = Imc(name: 'Erick', weight: 50.3, height: 1.8);
    expect(imc.imc, equals(15.52));
  });

  test('Classification', () {
    Imc imc = Imc(name: 'Erick', weight: 50.3, height: 1.8);
    imc.imc = 18.4;
    imc.classification = imc.calcClassification();
    
    print(imc.imc);
    expect(imc.classification, 'Saudável');
  });
}
