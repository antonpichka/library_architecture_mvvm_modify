import 'package:flutter/cupertino.dart';

abstract class BaseModelAssistantByViewModelForDomain {
  final Map<String,dynamic> _data;

  BaseModelAssistantByViewModelForDomain(this._data);

  @protected
  dynamic getData(String key) {
    if(_data.containsKey(key)) {
      return _data[key];
    }
    return throw Exception("No key: $key");
  }

  @protected
  void setData(String key,dynamic value) {
    _data[key] = value;
  }

}