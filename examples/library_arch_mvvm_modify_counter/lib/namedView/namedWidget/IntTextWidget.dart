import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IntTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';

class IntTextWidget
    extends StatelessWidget
{
  @protected
  final IntTextWidgetListViewModel lo;

  const IntTextWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    lo.notifyStreamIntForIncrementAndDecrementAndInGeneralZeroTask();
    return StreamBuilder<Int>(
        stream: lo.getStreamIntForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<Int> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return buildDataNull();
          }
          Int? int = asyncSnapshot.data;
          return buildSuccess(context, int);
        });
  }

  @protected
  Widget buildDataNull() {
    return Container();
  }

  @protected
  Widget buildSuccess(BuildContext context,Int? int) {
    return Text(
      "${int?.getOneParametersNamedForNamedWidgetOrView}",
      style: Theme.of(context).textTheme.headline4,
    );
  }
}