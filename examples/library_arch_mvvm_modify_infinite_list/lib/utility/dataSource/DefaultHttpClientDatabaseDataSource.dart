import 'package:http/http.dart' as http;

class DefaultHttpClientDatabaseDataSource {
  static http.Client _httpClient;

  http.Client get getHttpClient {
    if(_httpClient == null) {
      _httpClient = http.Client();
    }
    return _httpClient;
  }
}