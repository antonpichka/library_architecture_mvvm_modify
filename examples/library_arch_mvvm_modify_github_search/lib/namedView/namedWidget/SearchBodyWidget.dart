import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBodyWidgetListViewModel.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchBodyWidget
    extends StatelessWidget
{
  final SearchBodyWidgetListViewModel _lo;

  const SearchBodyWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ListSearchResultInLoading<SearchResultInLoading>>(
      stream: _lo.getStreamListSearchResultInLoadingUsingGetListNP,
      builder: (BuildContext context, AsyncSnapshot<ListSearchResultInLoading<SearchResultInLoading>> state) {
        if(state.data == null) {
          return buildDataNull();
        }
        ListSearchResultInLoading<SearchResultInLoading>? list = state.data;
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
  Widget buildError(ListSearchResultInLoading<SearchResultInLoading>? list) {
    return Text(list?.getOneParametersNamedForSearchBodyWidget ?? "");
  }

  @protected
  Widget buildIsEmptyValueFromTextInput(ListSearchResultInLoading<SearchResultInLoading>? list) {
    return const Text('Please enter a term to begin');
  }

  @protected
  Widget buildIsLoading(ListSearchResultInLoading<SearchResultInLoading>? list) {
    return const CircularProgressIndicator();
  }

  @protected
  Widget buildIsEmptyList(ListSearchResultInLoading<SearchResultInLoading>? list) {
    return const Text('No Results');
  }

  @protected
  Widget buildSuccess(ListSearchResultInLoading<SearchResultInLoading>? list) {
    return Expanded(child: buildOneForSuccess(list!.getParameterList));
  }

  Widget buildOneForSuccess(List<SearchResultInLoading>? list) {
    return ListView.builder(
      itemCount: list!.length,
      itemBuilder: (BuildContext context, int index) {
        return buildTwoForSuccess(list[index]);
      },
    );
  }

  Widget buildTwoForSuccess(SearchResultInLoading? item) {
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