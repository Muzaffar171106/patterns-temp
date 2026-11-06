import 'GameCharacter.dart';

class CharacterFactory {
  GameCharacter _prototype;

  CharacterFactory(this._prototype);

  void setCharacter(GameCharacter character) {
    _prototype = character;
  }

  GameCharacter cloneCharacter() {
    return _prototype.clone();
  }
}