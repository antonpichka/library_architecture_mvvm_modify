import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/namedSingleton/HttpClientSingleton.dart';

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