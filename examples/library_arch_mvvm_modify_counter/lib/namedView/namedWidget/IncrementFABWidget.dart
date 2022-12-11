import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IncrementFABWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IncrementFABWidget<Q extends Int,W extends ListInt>
    extends StatelessWidget
{
  final IncrementFABWidgetListViewModel<Q,W> _lo;

  IncrementFABWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _lo
            .setOneParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}