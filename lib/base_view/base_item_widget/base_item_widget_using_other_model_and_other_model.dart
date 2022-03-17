import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_other_model.dart';

abstract class BaseItemWidgetUsingOtherModelAndOtherModel<T,Y>
    extends BaseItemWidgetUsingOtherModel<T>
{
  final Y twoOtherModel;

  const BaseItemWidgetUsingOtherModelAndOtherModel(T otherModel,this.twoOtherModel,{Key key}) : super(otherModel,key: key);
}