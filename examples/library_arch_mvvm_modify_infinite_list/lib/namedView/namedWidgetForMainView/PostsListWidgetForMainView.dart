import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForPostsListWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/PostJsonPlaceholder.dart';
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
    return StreamBuilder<ListPostJsonPlaceholder>(
        stream: _lo.getStreamListPostJsonPlaceholderUsingGetListParameterIntForStartIndex,
        builder: (BuildContext buildContext, AsyncSnapshot<ListPostJsonPlaceholder> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          ListPostJsonPlaceholder listPostJsonPlaceholder = asyncSnapshot.data;
          switch(listPostJsonPlaceholder.getEnumListPostJsonPlaceholder) {
            case EnumListPostJsonPlaceholder.success:
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  if(listPostJsonPlaceholder.isFromIndexMoreOrEqualParameterLengthByListPostJsonPlaceholder(index)) {
                    return Center(
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(strokeWidth: 1.5),),
                    );
                  }
                  TextTheme textTheme = Theme.of(context).textTheme;
                  PostJsonPlaceholder itemPostJsonPlaceholder = listPostJsonPlaceholder.listModelNamed[index];
                  return Material(
                    child: ListTile(
                      leading: Text('${itemPostJsonPlaceholder.post.id}', style: textTheme.caption),
                      title: Text(itemPostJsonPlaceholder.post.title),
                      isThreeLine: true,
                      subtitle: Text(itemPostJsonPlaceholder.post.body),
                      dense: true,
                    ),
                  );
                },
                itemCount: listPostJsonPlaceholder.getParameterLengthByListPostJsonPlaceholder,
                controller: _scrollController);
            case EnumListPostJsonPlaceholder.isEmptyListPostJsonPlaceholder:
              return Center(child: Text('no posts'));
            case EnumListPostJsonPlaceholder.noInternetItLocalException:
              return Center(child: Text('no Internet. Connect to the Internet'));
            case EnumListPostJsonPlaceholder.serverNotWorkItNetworkException:
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