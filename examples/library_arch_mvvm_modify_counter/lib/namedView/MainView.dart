import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_arch_mvvm_modify_counter/utility/namedWidget/DecrementFABWidget.dart';
import 'package:library_arch_mvvm_modify_counter/utility/namedWidget/IncrementFABWidget.dart';
import 'package:library_arch_mvvm_modify_counter/utility/namedWidget/IntTextWidget.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseNamedView<MainView,MainViewListViewModel>
{
  _MainViewState() : super(MainViewListViewModel());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LibraryArchMVVMModifyCounter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:',),
            IntTextWidget(lo.intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIntTextWidget),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IncrementFABWidget(lo.intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForIncrementFABWidget),
          SizedBox(height: 8,),
          DecrementFABWidget(lo.intQNoServiceUsingGetNPForIncrementAndDecrementListViewModelForDecrementFABWidget),
        ],
      ),
    );
  }
}