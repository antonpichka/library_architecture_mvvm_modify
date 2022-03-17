import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_other_model_and_other_model.dart';

abstract class BaseItemWidgetUsingOtherModelAndOtherModelAndOtherModel<T,Y,Z>
    extends BaseItemWidgetUsingOtherModelAndOtherModel<T,Y>
{
  final Z threeOtherModel;

  const BaseItemWidgetUsingOtherModelAndOtherModelAndOtherModel(T otherModel,Y twoOtherModel,this.threeOtherModel,{Key key})
      : super(otherModel,twoOtherModel,key: key);
}