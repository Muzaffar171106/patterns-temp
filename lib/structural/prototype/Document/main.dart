import 'Document.dart';
import 'DocumentFactory.dart';

void main() {
  Document original = Document(
    id: 1,
    title: "Dart Programming",
    content: "Dart dasturlash tili haqida ma'lumot",
    author: "Muzaffar",
    tags: ["dart", "flutter", "programming"],
  );
  
  DocumentFactory factory = DocumentFactory(original);

  Document document1 = factory.cloneDocument();
  Document document2 = factory.cloneDocument();

  document1.title = "Flutter Development";
  document1.content = "Flutter framework haqida ma'lumot";
  document1.tags.add("mobile");

  document2.title = "Java Programming";
  document2.content = "Java dasturlash tili haqida ma'lumot";
  document2.tags.remove("flutter");

  print("===== ORIGINAL DOCUMENT =====");
  print(original);

  print("===== DOCUMENT 1 =====");
  print(document1);

  print("===== DOCUMENT 2 =====");
  print(document2);

  print("Original == Document 1: ${identical(original, document1)}");
  print("Original == Document 2: ${identical(original, document2)}");

  print(
    "Original tags == Document 1 tags: "
    "${identical(original.tags, document1.tags)}",
  );
}