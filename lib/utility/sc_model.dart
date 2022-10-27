import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class SCModel {
  final StreamController<BaseModel> streamController;
  BaseModel model;

  SCModel(this.streamController,this.model);

  set setParameterModel(BaseModel model) {
    this.model = model;
  }

  void notifyStreamModel() {
    streamController
        .sink
        .add(model);
  }
}