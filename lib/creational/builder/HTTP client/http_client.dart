class HttpClient {
  final String baseUrl;
  final String method;
  final Map<String, String> headers;
  final int timeout;

  const HttpClient({
    required this.baseUrl,
    required this.method,
    required this.headers,
    required this.timeout,
  });

  void showConfiguration() {
    print('Base URL: $baseUrl');
    print('Method: $method');
    print('Headers: $headers');
    print('Timeout: $timeout seconds');
  }
}