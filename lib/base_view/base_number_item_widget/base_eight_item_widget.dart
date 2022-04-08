import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_item_widget/base_seven_item_widget.dart';

abstract class BaseEightItemWidget<T,Y,Z,X,C,V,B,N>
    extends BaseSevenItemWidget<T,Y,Z,X,C,V,B>
{
  final N objectEight;

  const BaseEightItemWidget(T object,Y objectTwo,Z objectThree,X objectFour,C objectFive,V objectSix,B objectSeven,this.objectEight,{Key key})
      : super(object,objectTwo,objectThree,objectFour,objectFive,objectSix,objectSeven,key: key);
}