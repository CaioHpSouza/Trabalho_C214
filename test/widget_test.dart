import 'package:test/test.dart';

void main() {

  print("Hello World\n");
  
  const salario = 100.0; //final

  test('Existe salario', () {
    assert(salario != null && salario >= 0);
  });

  test('Calcular novo salario', () {
    const aumento = 500.0;
    const valorComAumento = salario + aumento;
    expect(
        calcularNovoSalario(salario, aumento, false), equals(valorComAumento));
  });

  test('Calcular novo salario com porcentagem', () {
    const aumento = 100.0;
    const valorComAumento = salario + aumento;
    expect(
        calcularNovoSalario(salario, aumento, true), equals(valorComAumento));
  });
}

double calcularNovoSalario(
    double salarioAtual, double aumento, bool porcentagem) {
  if (porcentagem) {
    return salarioAtual + (salarioAtual * aumento / 100);
  }

  return salarioAtual + aumento;
}
