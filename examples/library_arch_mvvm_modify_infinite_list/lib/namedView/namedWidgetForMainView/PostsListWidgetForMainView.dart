import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForPostsListWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutLibrary/PostForInfiniteListWithoutLibrary.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';

class PostsListWidgetForMainView
    extends StatefulWidget
{
  @override
  State<PostsListWidgetForMainView> createState() => _PostsListWidgetForMainViewState();
}

class _PostsListWidgetForMainViewState
    extends BaseViewOrWidgetForView<PostsListWidgetForMainView>
{
  final ListOfViewModelForPostsListWidgetForMainView _lo =
  ListOfViewModelForPostsListWidgetForMainView();
  final ScrollController _scrollController =
  ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
        ..removeListener(_onScroll)
        ..dispose();
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _lo.getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholderAndInGeneralOneTaskExceptionItInitMethod();
    return StreamBuilder<PostForInfiniteListWithoutLibrary>(
        stream: _lo.getStreamPostForInfiniteListWithoutLibraryUsingGetNP,
        builder: (BuildContext buildContext, AsyncSnapshot<PostForInfiniteListWithoutLibrary> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          PostForInfiniteListWithoutLibrary postForInfiniteList = asyncSnapshot.data;
          switch(postForInfiniteList.getEnumPostForInfiniteListWithoutLibrary) {
            case EnumPostForInfiniteListWithoutLibrary.success:
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  if(postForInfiniteList.isFromIndexMoreOrEqualParameterLengthByListPostJsonPlaceholder(index)) {
                    return Center(
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(strokeWidth: 1.5),),
                    );
                  }
                  TextTheme textTheme = Theme.of(context).textTheme;
                  PostJsonPlaceholder itemPostJsonPlaceholder = postForInfiniteList.listPostJsonPlaceholder[index];
                  return Material(
                    child: ListTile(
                      leading: Text('${itemPostJsonPlaceholder.uniqueId}', style: textTheme.caption),
                      title: Text(itemPostJsonPlaceholder.title),
                      isThreeLine: true,
                      subtitle: Text(itemPostJsonPlaceholder.body),
                      dense: true,
                    ),
                  );
                },
                itemCount: postForInfiniteList.getParameterLengthByListPostJsonPlaceholder,
                controller: _scrollController);
            case EnumPostForInfiniteListWithoutLibrary.isEmptyListOfPost:
              return Center(child: Text('no posts'));
            case EnumPostForInfiniteListWithoutLibrary.noInternetItLocalException:
              return Center(child: Text('no Internet. Connect to the Internet'));
            case EnumPostForInfiniteListWithoutLibrary.serverNotWorkItNetworkException:
              return Center(child: Text('failed to fetch posts'));
            default:
              return Container();
          }
        });
  }

  void _onScroll() {
    if (_isBottom)
      _lo.getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholderAndInGeneralOneTask();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}