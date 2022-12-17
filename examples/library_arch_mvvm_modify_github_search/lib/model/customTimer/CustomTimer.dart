import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class CustomTimer
    extends BaseModel
{
  Timer? _timer;

  CustomTimer.success(this._timer) : super.success("");

  static CustomTimer get getCustomTimerForSuccess => CustomTimer.success(null);

  @protected
  @nonVirtual
  Timer? get getParameterTimer => _timer;

  @protected
  @nonVirtual
  set setParameterTimer(Timer timer) => _timer = timer;
  set setOneParametersNamedForSearchBarWidget(dynamic Function() callback) {
    _timer = Timer(const Duration(milliseconds: 1000),() {
      callback();
    });
  }
  void oneParametersNamedForSearchBarWidget() {
    if(_isNotActiveParameterTimer()) {
      return;
    }
    _timer?.cancel();
  }

  bool _isNotActiveParameterTimer() {
    bool isActive = _timer?.isActive ?? false;
    bool isNotActive = !isActive;
    return isNotActive;
  }
}