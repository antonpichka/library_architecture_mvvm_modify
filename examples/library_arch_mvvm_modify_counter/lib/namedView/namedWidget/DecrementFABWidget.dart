import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/DecrementFABWidgetListViewModel.dart';

base class DecrementFABWidget extends StatelessWidget {
  @protected
  final DecrementFABWidgetListViewModel lo;

  const DecrementFABWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () =>
            lo.setTwoParametersNamedForNamedByIntAndInGeneralZeroTask());
  }
}
