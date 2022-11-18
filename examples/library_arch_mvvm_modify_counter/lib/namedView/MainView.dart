import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';

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
            StreamBuilder<Int>(
                initialData: Int.success(0),
                stream: lo.getStreamIntUsingGetNPForIncrementAndDecrement,
                builder: (BuildContext buildContext, AsyncSnapshot<Int> asyncSnapshot) {
                  Int int = asyncSnapshot.data;
                  return Text(
                    "${int.field}",
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => lo.incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => lo.decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(),
          ),
        ],
      ),
    );
  }
}