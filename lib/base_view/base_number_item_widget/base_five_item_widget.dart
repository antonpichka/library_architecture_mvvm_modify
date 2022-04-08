import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_four_item_widget.dart';

abstract class BaseFiveItemWidget<T,Y,Z,X,C>
    extends BaseFourItemWidget<T,Y,Z,X>
{
  final C objectFive;

  const BaseFiveItemWidget(T object, Y objectTwo, Z objectThree, X objectFour,this.objectFive, {Key key})
      : super(object, objectTwo, objectThree, objectFour, key: key);
}