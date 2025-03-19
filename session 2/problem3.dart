import 'dart:math';

String calculateSquareRoot(dynamic input) {
  try {
    if (input is! num) {
      throw Exception("Invalid input: Not a number.");
    }
    if (input < 0) {
      throw Exception("Square root of a negative number is not allowed.");
    }
    return sqrt(input).toStringAsFixed(1);
  } catch (e) {
    return "Error: ${e.toString().replaceFirst('Exception: ', '')}";
  }
}

void main() {
  print(calculateSquareRoot(4));
  print(calculateSquareRoot(-9));
  print(calculateSquareRoot("abc"));
}
