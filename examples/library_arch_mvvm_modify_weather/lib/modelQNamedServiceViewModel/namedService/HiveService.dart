import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/namedSingleton/HiveSingleton.dart';

class HiveService {
  HiveSingleton? _hiveSingleton;

  HiveSingleton? get getHiveSingleton {
    if(_hiveSingleton != null) {
      return _hiveSingleton;
    }
    _hiveSingleton = HiveSingleton();
    return _hiveSingleton;
  }
}