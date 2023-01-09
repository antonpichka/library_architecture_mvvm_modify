import 'package:http/http.dart' as http;
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/named_singleton/base_named_singleton.dart';

class HttpClientSingleton
    extends BaseNamedSingleton
{
  static http.Client? _httpClient;

  http.Client? get getHttpClient {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(_httpClient != null) {
      return _httpClient;
    }
    _httpClient = http.Client();
    return _httpClient;
  }
}