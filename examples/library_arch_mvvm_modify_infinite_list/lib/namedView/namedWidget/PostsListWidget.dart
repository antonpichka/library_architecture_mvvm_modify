import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';

class PostsListWidget
    extends StatefulWidget
{
  final PostsListWidgetListViewModel lo;

  const PostsListWidget(this.lo);

  @override
  State<PostsListWidget> createState() => PostsListWidgetState();
}

class PostsListWidgetState
    extends State<PostsListWidget>
    with WidgetsBindingObserver
{
  @protected
  final scrollController =
  ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(onScroll);
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ListPost<Post>>(
        stream: widget.lo.getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
        builder: (BuildContext buildContext, AsyncSnapshot<ListPost<Post>> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return buildDataNull();
          }
          ListPost<Post>? listPost = asyncSnapshot.data;
          switch(listPost?.getEnumListPostForPostsListWidget) {
            case EnumListPostForPostsListWidget.success:
              return buildSuccess(listPost);
            case EnumListPostForPostsListWidget.isEmptyList:
              return buildIsEmptyList(listPost);
            case EnumListPostForPostsListWidget.noInternetItLocalException:
              return buildNoInternetItLocalException(listPost);
            case EnumListPostForPostsListWidget.serverNotWorkItNetworkException:
              return buildServerNotWorkItNetworkException(listPost);
            default:
              return buildDefault(listPost);
          }
        });
  }

  @protected
  Widget buildSuccess(ListPost<Post>? listPost) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if(listPost!.isOneParametersNamedForPostsListWidget(index)) {
            return buildLoadingForSuccess(listPost);
          }
          Post? itemPost = listPost.getParameterList![index];
          return buildItemForSuccess(itemPost);
        },
        itemCount: listPost?.getTwoParametersNamedForPostsListWidget,
        controller: scrollController);
  }

  @protected
  Widget buildLoadingForSuccess(ListPost<Post>? listPost) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),),
    );
  }

  @protected
  Widget buildItemForSuccess(Post? itemPost) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text(itemPost?.getOneParametersNamedForPostsListWidget ?? "", style: textTheme.caption),
        title: Text(itemPost?.getTwoParametersNamedForPostsListWidget ?? ""),
        isThreeLine: true,
        subtitle: Text(itemPost?.getThreeParametersNamedForPostsListWidget ?? ""),
        dense: true,
      ),
    );
  }

  @protected
  Widget buildDataNull() {
    return const Center(child: CircularProgressIndicator());
  }

  @protected
  Widget buildIsEmptyList(ListPost<Post>? listPost) {
    return const Center(child: Text('no posts'));
  }

  @protected
  Widget buildNoInternetItLocalException(ListPost<Post>? listPost) {
    return const Center(child: Text('no Internet. Connect to the Internet'));
  }

  @protected
  Widget buildServerNotWorkItNetworkException(ListPost<Post>? listPost) {
    return const Center(child: Text('failed to fetch posts'));
  }

  @protected
  Widget buildDefault(ListPost<Post>? listPost) {
    return Container();
  }

  @protected
  void onScroll() {
    if (isBottom) {
      widget.lo.getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask();
    }
  }

  @protected
  bool get isBottom {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}