import 'Document.dart';

class DocumentFactory {
  Document _prototype;

  DocumentFactory(this._prototype);

  void setDocument(Document document) {
    _prototype = document;
  }

  Document cloneDocument() {
    return _prototype.clone();
  }
}