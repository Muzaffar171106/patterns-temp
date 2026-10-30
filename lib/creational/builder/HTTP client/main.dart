import 'package:design_patterns/builder/http_client_builder.dart';

void main() {
  final client = HttpClientBuilder()
      .setBaseUrl('https://api.example.com')
      .setMethod('POST')
      .setHeader('Content-Type', 'application/json')
      .setHeader('Authorization', 'Bearer token')
      .setTimeout(60)
      .build();

  client.showConfiguration();
}