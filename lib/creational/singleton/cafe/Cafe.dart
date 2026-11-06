import 'package:builder/creational/singleton/cafe/Latte.dart';
import 'package:builder/creational/singleton/cafe/Tea.dart';

class Cafe {
  final String kind;

  Cafe(this.kind);

  void order() {
    if (kind == "coffee") {
      Latte latte = Latte();
      print("TAYYOR: ${latte.name()}");
    } else if (kind == "tea") {
      Tea tea = Tea();
      print("TAYYOR: ${tea.name()}");
    } else {
      throw ArgumentError(kind);
    }
  }
}