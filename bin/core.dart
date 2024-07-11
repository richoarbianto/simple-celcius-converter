import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukan nilai Celcius : ");
  String? x = stdin.readLineSync() ?? 'x';
  double? celcius = double.tryParse(x);
  if (celcius == null) {
    print("nilai must be an integer.");
    return;
  }
  double? result;
  String? symbol;
  String msg = """
1. Celcius ke Kelvin
2. Celcius ke Fahrenheit
3. Celcius ke Reaumur
4. Celcius ke Rankine

Pilih opsi : """;
  stdout.write(msg);
  int opsi = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  if (opsi == 1) {
    result = celcius + 273.15;
    symbol = 'K';
  } else if (opsi == 2) {
    result = (9 / 5 * celcius) + 32;
    symbol = 'F';
  } else if (opsi == 3) {
    result = 4 / 5 * celcius;
    symbol = '°Re';
  } else if (opsi == 4) {
    result = (9 / 5 * celcius) + 491.67;
    symbol = '°R';
  } else {
    print('Opsi tidak valid!');
    return;
  }
  print("Hasil : $result $symbol");
}
