import 'CafeFactory.dart';

void main() {
  var factory = CafeFactory();

  var coffee = factory.create("coffee");
  var tea = factory.create("tea");

  print("Tayyor: ${coffee.name()}");
  print("Tayyor: ${tea.name()}");
}