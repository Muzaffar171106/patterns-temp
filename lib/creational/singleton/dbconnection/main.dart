import 'DatabaseConnection.dart';

void main() {
  var db1 = DatabaseConnection();
  var db2 = DatabaseConnection();

  print(identical(db1, db2)); // true

  db1.connect();
  db2.connect();
}