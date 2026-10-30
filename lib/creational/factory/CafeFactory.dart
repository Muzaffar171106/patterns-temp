import 'Coffee.dart';
import 'Latte.dart';
import 'Tea.dart';

class CafeFactory {
  Coffee create(String type) {
    switch (type) {
      case "coffee":
        return Latte();

      case "tea":
        return Tea();

      default:
        throw ArgumentError("Noma'lum tur: $type");
    }
  }
}