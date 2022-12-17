import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBarWidgetListViewModel.dart';

class SearchBarWidget
    extends StatefulWidget
{
  final SearchBarWidgetListViewModel searchBarWidgetListViewModel;

  const SearchBarWidget(this.searchBarWidgetListViewModel);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState
    extends State<SearchBarWidget>
{
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      autocorrect: false,
      onChanged: (text) {
        widget
            .searchBarWidgetListViewModel
            .getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResultAndInGeneralOneTask(text);
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
    _textController.text = '';
    widget
        .searchBarWidgetListViewModel
        .getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResultAndInGeneralOneTask("");
  }
}