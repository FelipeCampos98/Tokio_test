import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_test/data/card_data.dart';

void main() {
  group('CardData', () {
    final cardData = CardData();

    test('deve possuir 6 cards', () {
      expect(
        cardData.CardDataData.length,
        6,
      );
    });

    test('o primeiro card deve ser Automovel', () {
      expect(
        cardData.CardDataData.first.title,
        'Automovel',
      );
    });

    test('deve possuir card de Moto', () {
      final containsMoto = cardData.CardDataData.any(
        (card) => card.title == 'Moto',
      );

      expect(containsMoto, true);
    });
  });
}