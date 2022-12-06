import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/namedService/namedSingleton/HttpClientSingleton.dart';

class HttpClientService {
  HttpClientSingleton? _httpClientSingleton;

  HttpClientSingleton? get getHttpClientSingleton {
    if(_httpClientSingleton != null) {
      return _httpClientSingleton;
    }
    _httpClientSingleton = HttpClientSingleton();
    return _httpClientSingleton;
  }
}