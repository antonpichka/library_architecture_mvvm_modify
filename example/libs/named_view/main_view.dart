import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view_state/base_view_state.dart';

import '../list_of_view_model_for_named_view/list_of_view_model_for_main_view.dart';

class MainView extends StatefulWidget {

  @override
  _MainView createState() => _MainView();
}

class _MainView extends BaseViewState<MainView> {
  ListOfViewModelForMainView _lo;

  @override
  initState() {
    super.initState();
    _lo = ListOfViewModelForMainView();
  }

  @override
  void dispose() {
    _lo.dispose();
    _lo = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}