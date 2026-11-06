import 'Copyable.dart';

class GameCharacter implements Copyable {
  int _id;
  String _name;
  int _level;
  String _weapon;

  GameCharacter({
    required int id,
    required String name,
    required int level,
    required String weapon,
  })  : _id = id,
        _name = name,
        _level = level,
        _weapon = weapon;

  int get id => _id;
  String get name => _name;
  int get level => _level;
  String get weapon => _weapon;

  set id(int value) => _id = value;
  set name(String value) => _name = value;
  set level(int value) => _level = value;
  set weapon(String value) => _weapon = value;

  @override
  GameCharacter clone() {
    return GameCharacter(
      id: _id,
      name: _name,
      level: _level,
      weapon: _weapon,
    );
  }

  @override
  String toString() {
    return 'ID: $_id, Name: $_name, Level: $_level, Weapon: $_weapon';
  }
}