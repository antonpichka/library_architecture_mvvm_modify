import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IncrementFABWidgetListViewModel.dart';

class IncrementFABWidget
    extends StatelessWidget
{
  @protected
  final IncrementFABWidgetListViewModel lo;

  const IncrementFABWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => lo
            .setOneParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}