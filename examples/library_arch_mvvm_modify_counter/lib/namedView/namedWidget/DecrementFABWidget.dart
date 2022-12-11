import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/DecrementFABWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class DecrementFABWidget<Q extends Int,W extends ListInt>
    extends StatelessWidget
{
  final DecrementFABWidgetListViewModel<Q,W> _lo;

  DecrementFABWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () => _lo
            .setTwoParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}