import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_test/utils/auth_utils.dart';


void main() {
  group('cpfToEmail', () {
    test('deve converter CPF formatado para email', () {
      final result = cpfToEmail('527.431.058-36');

      expect(
        result,
        '52743105836@example.com',
      );
    });

    test('deve funcionar com CPF sem formatação', () {
      final result = cpfToEmail('52743105836');

      expect(
        result,
        '52743105836@example.com',
      );
    });
  });
}