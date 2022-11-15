import 'package:http/http.dart' as http;

class HttpClientSingleton {
  static http.Client _httpClient;

  http.Client get getHttpClient {
    if(_httpClient != null) {
      return _httpClient;
    }
    _httpClient = http.Client();
    return _httpClient;
  }
}