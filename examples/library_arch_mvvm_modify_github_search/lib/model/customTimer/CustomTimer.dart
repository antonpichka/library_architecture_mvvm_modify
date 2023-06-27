import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class CustomTimer extends BaseModel {
  Timer? timer;

  CustomTimer.success(this.timer) : super.success("");

  static CustomTimer get getCustomTimerForSuccess => CustomTimer.success(null);

  set setOneParametersNamedForSearchBarWidget(dynamic Function() callback) {
    timer = Timer(const Duration(milliseconds: 1000), () {
      callback();
    });
  }

  void setTwoParametersNamedForSearchBarWidget() {
    if (_isNotActiveParameterTimer()) {
      return;
    }
    timer?.cancel();
  }

  bool _isNotActiveParameterTimer() {
    bool isActive = timer?.isActive ?? false;
    bool isNotActive = !isActive;
    return isNotActive;
  }
}
