import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IntTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';

class IntTextWidget
    extends StatelessWidget
{
  final IntTextWidgetListViewModel _lo;

  const IntTextWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    _lo.notifyStreamIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask();
    return StreamBuilder<Int>(
        stream: _lo.getStreamIntUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<Int> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return Container();
          }
          Int? int = asyncSnapshot.data;
          return Text(
            "${int?.getOneParametersNamedForNamedWidgetOrView}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}