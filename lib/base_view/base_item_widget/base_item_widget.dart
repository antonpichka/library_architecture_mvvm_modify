import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

//ignore: must_be_immutable
abstract class BaseItemWidget<
      T extends BaseModelDomain>
    extends StatelessWidget
{
  T _modelDomain;

  T get getModelDomain {
    return _modelDomain;
  }

  set setModelDomain(T item) {
    _modelDomain = item;
  }
  
}