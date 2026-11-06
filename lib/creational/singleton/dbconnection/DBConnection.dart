class DatabaseConnection {
  static final DatabaseConnection _instance =
      DatabaseConnection._internal();

  DatabaseConnection._internal();

  factory DatabaseConnection() {
    return _instance;
  }

  void connect() {
    print("Database ulandi!");
  }
}