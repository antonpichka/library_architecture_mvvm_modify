import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/notes_overview_view.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/stats_view.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/main_view_list_view_model.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends State<MainView>
{
  final _lo = MainViewListViewModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _lo.getMainTab?.getIndexParameterEnumMainTab,
        children: [NotesOverviewView(),StatsView()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => null/*Navigator.of(context).push(EditTodoPage.route())*/,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _lo
                      .getMainTab
                      ?.setEnumMainTabNameTodosParameterEnumMainTab();
                });
              },
              iconSize: 32,
              color: _lo.getMainTab!.isEqualsEnumMainTabNameTodosParameterEnumMainTab()!
                  ? Theme.of(context).colorScheme.secondary
                  : null,
              icon: const Icon(Icons.list_rounded),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _lo
                      .getMainTab
                      ?.setEnumMainTabNameStatsParameterEnumMainTab();
                });
              },
              iconSize: 32,
              color: _lo.getMainTab!.isEqualsEnumMainTabNameStatsParameterEnumMainTab()!
                  ? Theme.of(context).colorScheme.secondary
                  : null,
              icon: const Icon(Icons.show_chart_rounded),
            )
          ],
        ),
      ),
    );
  }
}