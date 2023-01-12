import 'package:http/http.dart' as http;
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_named_service.dart';

class HttpClientService
    extends BaseNamedService
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