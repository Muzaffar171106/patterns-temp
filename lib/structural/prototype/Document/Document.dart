import 'package:builder/structural/prototype/Document/Copyable.dart';

class Document implements Copyable {
  int id;
  String title;
  String content;
  String author;
  List tags;

  Document({required this.id, required this.title, required this.content, required this.author, required this.tags});

  Document clone() {
    return Document(id: this.id, title: this.title, content: this.content, author: this.author, tags: List.from(this.tags));
  }

  String toString() {
    return '''
ID: $id
Title: $title
Content: $content
Author: $author
Tags: $tags
''';
  }
}