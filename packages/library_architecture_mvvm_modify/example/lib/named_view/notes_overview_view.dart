import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/notes_list_view_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/notes_overview_filter_button_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/notes_overview_options_button_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/notes_overview_view_list_view_model.dart';

class NotesOverviewView extends StatefulWidget {
  @override
  State<NotesOverviewView> createState() => _NotesOverviewViewState();
}

class _NotesOverviewViewState extends State<NotesOverviewView> {
  final _lo = NotesOverviewViewListViewModel();

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
    final l10n = context.l10n;
    return Scaffold(
        appBar: AppBar(title: Text(l10n.todosOverviewAppBarTitle), actions: [
          NotesOverviewFilterButtonWidget(
              _lo.notesOverviewFilterButtonWidgetListViewModel),
          NotesOverviewOptionsButtonWidget(
              _lo.notesOverviewOptionsButtonWidgetListViewModel),
        ]),
        body: NotesListViewWidget(_lo.notesListViewWidgetListViewModel));
  }
}
