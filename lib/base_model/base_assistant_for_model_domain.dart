import 'package:flutter/cupertino.dart';

abstract class BaseAssistantForModelDomain {
  final Map<String,dynamic> _data;

  BaseAssistantForModelDomain(this._data);

  @protected
  dynamic getData(String key) {
    if(_data.containsKey(key)) {
      return _data[key];
    }
    return null;
  }

  @protected
  void setData(String key,dynamic value) {
    _data[key] = value;
  }

}