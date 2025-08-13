import 'dart:io';

void main() {
  print("Informe os graus Celsius°: ");

  String? entrada = stdin.readLineSync();
  double celsius = double.parse(entrada!);

  double fahrenheit = celsiusParaFahrenheit(celsius);
  print("A temperatura em Fahrenheit é: $fahrenheit°F");
}

double celsiusParaFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
