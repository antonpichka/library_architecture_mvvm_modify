import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_five_item_widget.dart';

abstract class BaseSixItemWidget<T,Y,Z,X,C,V>
    extends BaseFiveItemWidget<T,Y,Z,X,C>
{
  final V objectSix;

  const BaseSixItemWidget(T object,Y objectTwo,Z objectThree,X objectFour,C objectFive,this.objectSix,{Key key})
      : super(object,objectTwo,objectThree,objectFour,objectFive,key: key);
}