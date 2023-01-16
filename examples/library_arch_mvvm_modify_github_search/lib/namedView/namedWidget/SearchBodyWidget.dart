import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBodyWidgetListViewModel.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchBodyWidget
    extends StatefulWidget
{
  final SearchBodyWidgetListViewModel lo;

  const SearchBodyWidget(this.lo);

  @override
  State<SearchBodyWidget> createState() => SearchBodyWidgetState();
}

class SearchBodyWidgetState
    extends State<SearchBodyWidget>
{
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ListSearchResultInLoading?>(
      stream: widget.lo.getStreamListSearchResultInLoading,
      builder: (BuildContext context, AsyncSnapshot<ListSearchResultInLoading?> state) {
        if(state.data == null) {
          return buildDataNull();
        }
        ListSearchResultInLoading? list = state.data;
        switch(list!.getEnumListSearchResultInLoadingForSearchBodyWidget) {
          case EnumListSearchResultInLoadingForSearchBodyWidget.error:
            return buildError(list);
          case EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyValueFromTextInput:
            return buildIsEmptyValueFromTextInput(list);
          case EnumListSearchResultInLoadingForSearchBodyWidget.isLoading:
            return buildIsLoading(list);
          case EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyList:
            return buildIsEmptyList(list);
          case EnumListSearchResultInLoadingForSearchBodyWidget.success:
            return buildSuccess(list);
        }
      },
    );
  }

  @protected
  Widget buildDataNull() {
    return buildIsEmptyValueFromTextInput(null);
  }

  @protected
  Widget buildError(ListSearchResultInLoading? list) {
    return Text(list?.getOneParametersNamedForSearchBodyWidget ?? "");
  }

  @protected
  Widget buildIsEmptyValueFromTextInput(ListSearchResultInLoading? list) {
    return const Text('Please enter a term to begin');
  }

  @protected
  Widget buildIsLoading(ListSearchResultInLoading? list) {
    return const CircularProgressIndicator();
  }

  @protected
  Widget buildIsEmptyList(ListSearchResultInLoading? list) {
    return const Text('No Results');
  }

  @protected
  Widget buildSuccess(ListSearchResultInLoading? list) {
    return Expanded(child: buildListViewForSuccess(list!.listModel));
  }

  @protected
  Widget buildListViewForSuccess(List<SearchResultInLoading>? list) {
    return ListView.builder(
      itemCount: list!.length,
      itemBuilder: (BuildContext context, int index) {
        return buildItemForListViewForSuccess(list[index]);
      },
    );
  }

  @protected
  Widget buildItemForListViewForSuccess(SearchResultInLoading? item) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(item?.getOneParametersNamedForSearchBodyWidget ?? ""),
      ),
      title: Text(item?.getTwoParametersNamedForSearchBodyWidget ?? ""),
      onTap: () async {
        final uri = Uri.parse(item?.getThreeParametersNamedForSearchBodyWidget ?? "");
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
    );
  }
}