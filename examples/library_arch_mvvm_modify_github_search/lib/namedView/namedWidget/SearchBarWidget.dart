import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBarWidgetListViewModel.dart';

class SearchBarWidget
    extends StatefulWidget
{
  final SearchBarWidgetListViewModel lo;

  const SearchBarWidget(this.lo);

  @override
  State<SearchBarWidget> createState() => SearchBarWidgetState();
}

class SearchBarWidgetState
    extends State<SearchBarWidget>
{
  @protected
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      autocorrect: false,
      onChanged: (text) {
        widget
            .lo
            .getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndInGeneralOneTask(text);
      },
      decoration: buildDecorationForTextField()
    );
  }

  @protected
  InputDecoration buildDecorationForTextField() {
    return InputDecoration(
      prefixIcon: const Icon(Icons.search),
      suffixIcon: GestureDetector(
        onTap: onClearTappedForDecorationForTextField,
        child: const Icon(Icons.clear),
      ),
      border: InputBorder.none,
      hintText: 'Enter a search term',
    );
  }

  @protected
  void onClearTappedForDecorationForTextField() {
    textController.text = '';
    widget
        .lo
        .getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndInGeneralOneTask("");
  }
}