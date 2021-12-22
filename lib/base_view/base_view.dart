import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseView extends StatefulWidget  {

  void dispose(List<BaseViewModel> list) {
    if(list.isEmpty) {
      return;
    }

    for(BaseViewModel viewModel in list) {
      if(viewModel != null) {
        viewModel.dispose();
        viewModel = null;
      }
    }
  }

}
