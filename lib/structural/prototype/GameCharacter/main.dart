import 'GameCharacter.dart';
import 'CharacterFactory.dart';

void main() {
  GameCharacter original = GameCharacter(
    id: 1,
    name: "Warrior",
    level: 10,
    weapon: "Sword",
  );

  CharacterFactory factory = CharacterFactory(original);

  GameCharacter character1 = factory.cloneCharacter();
  GameCharacter character2 = factory.cloneCharacter();

  character1.name = "Shadow";
  character1.level = 20;
  character1.weapon = "Katana";

  character2.name = "Knight";
  character2.level = 15;
  character2.weapon = "Axe";

  print("Original:");
  print(original);

  print("\nCharacter 1:");
  print(character1);

  print("\nCharacter 2:");
  print(character2);

  print("\nOriginal == Character 1: ${identical(original, character1)}");
  print("Original == Character 2: ${identical(original, character2)}");
  print("Character 1 == Character 2: ${identical(character1, character2)}");
}