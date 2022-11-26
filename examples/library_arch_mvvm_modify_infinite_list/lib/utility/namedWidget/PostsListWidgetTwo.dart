import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/modelQNamedServiceListViewModelForNamedWidget/PostQHttpClientServiceAndBoolQNoServiceListViewModelForPostsListWidgetTwo.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedWidget/PostsListWidget.dart';

class PostsListWidgetTwo
    extends StatelessWidget
{
  final PostQHttpClientServiceAndBoolQNoServiceListViewModelForPostsListWidgetTwo _lo;

  PostsListWidgetTwo(this._lo);

  @override
  Widget build(BuildContext context) {
    _lo.getListPostFromJsonPlaceholderServiceParameterIntAndSetListPostAndInGeneralOneTask();
    return PostsListWidget(_lo.getPostQHttpClientServiceAndBoolQNoServiceListViewModelForPostsListWidget);
  }
}