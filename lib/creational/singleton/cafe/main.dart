import 'package:builder/creational/singleton/cafe/Cafe.dart';

void main() {
  Cafe coffeeCafe = Cafe("coffee");
  coffeeCafe.order();

  Cafe teaCafe = Cafe("tea");
  teaCafe.order();
}