import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/listOfViewModelForNamedView/ListOfViewModelForMainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidgetForMainView/PostsListWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseViewOrWidgetForView<MainView>
{
  final ListOfViewModelForMainView _lo =
  ListOfViewModelForMainView();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    SharedStreamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _lo.getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTask(
        functionForSuccessOrException: (PostForInfiniteList postForInfiniteList) {
          SharedStreamController.setModelForWidget(this, MainView, PostsListWidgetForMainView, EnumPostsListWidgetForMainViewForModel.PostForInfiniteList, postForInfiniteList);
          SharedStreamController.notifyStreamModelForWidgetIfHasListener(this, MainView, PostsListWidgetForMainView, EnumPostsListWidgetForMainViewForModel.PostForInfiniteList);
        });
    return Scaffold(
      appBar: AppBar(
        title: Text("LibraryArchMVVMModifyInfiniteList"),
      ),
      body: PostsListWidgetForMainView());
  }
}