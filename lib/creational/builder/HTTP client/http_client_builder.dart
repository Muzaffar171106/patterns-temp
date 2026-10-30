import 'http_client.dart';

class HttpClientBuilder {
  String _baseUrl = '';
  String _method = 'GET';
  Map<String, String> _headers = {};
  int _timeout = 30;

  HttpClientBuilder setBaseUrl(String url) {
    if (url.trim().isEmpty) {
      throw ArgumentError('Base URL cannot be empty.');
    }

    _baseUrl = url;
    return this;
  }

  HttpClientBuilder setMethod(String method) {
    const allowedMethods = ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'];

    if (!allowedMethods.contains(method.toUpperCase())) {
      throw ArgumentError('Invalid HTTP method.');
    }

    _method = method.toUpperCase();
    return this;
  }

  HttpClientBuilder setHeaders(Map<String, String> headers) {
    _headers = Map.from(headers);
    return this;
  }

  HttpClientBuilder setHeader(String key, String value) {
    if (key.trim().isEmpty) {
      throw ArgumentError('Header key cannot be empty.');
    }

    _headers[key] = value;
    return this;
  }

  HttpClientBuilder setTimeout(int seconds) {
    if (seconds <= 0) {
      throw ArgumentError('Timeout must be positive.');
    }

    _timeout = seconds;
    return this;
  }

  HttpClient build() {
    if (_baseUrl.isEmpty) {
      throw StateError('Base URL is required.');
    }

    return HttpClient(
      baseUrl: _baseUrl,
      method: _method,
      headers: Map.unmodifiable(_headers),
      timeout: _timeout,
    );
  }
}