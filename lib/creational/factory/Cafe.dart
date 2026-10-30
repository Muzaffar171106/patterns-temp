
class Cafe {
  static final Cafe _instance = Cafe._internal();
  Cafe._internal();

  factory Cafe() {
    return _instance;
  }
  void order(String kind) {
    if (kind == "coffee") {
      var l = Latte();
      print("Tayyor ${l.name()}");
    } else if (kind == "tea") {
      var t = Tea();
      print("Tayyor ${t.name()}");
    } else {
      throw ArgumentError("Noma'lum tur: $kind");
    }
  }
}