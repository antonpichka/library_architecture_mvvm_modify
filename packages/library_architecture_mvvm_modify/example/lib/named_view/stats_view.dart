import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/stats_active_note_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/stats_completed_note_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/stats_view_list_view_model.dart';

class StatsView extends StatefulWidget {
  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
  final _lo = StatsViewListViewModel();

  @override
  Widget build(BuildContext context) {
    _lo.getListNoteFromSqfliteServiceNPAndInGeneralOneTask();
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.statsAppBarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StatsCompletedNoteWidget(_lo.statsCompletedNoteWidgetListViewModel),
          StatsActiveNoteWidget(_lo.statsActiveNoteWidgetListViewModel)
        ],
      ),
    );
  }
}
