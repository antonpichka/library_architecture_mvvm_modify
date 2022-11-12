import 'package:http/http.dart' as http;

class HttpClientService {
  static http.Client _httpClient;

  static http.Client get getHttpClient {
    if(_httpClient != null) {
      return _httpClient;
    }
    _httpClient = http.Client();
    return _httpClient;
  }
}