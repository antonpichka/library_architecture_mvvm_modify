import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/DecrementFABWidgetListViewModel.dart';

class DecrementFABWidget
    extends StatelessWidget
{
  final DecrementFABWidgetListViewModel _lo;

  const DecrementFABWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () => _lo
            .setTwoParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask());
  }
}