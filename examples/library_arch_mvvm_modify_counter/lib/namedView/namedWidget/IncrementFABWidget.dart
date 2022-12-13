import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IncrementFABWidgetListViewModel.dart';

class IncrementFABWidget
    extends StatelessWidget
{
  final IncrementFABWidgetListViewModel _lo;

  const IncrementFABWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _lo
            .setOneParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}