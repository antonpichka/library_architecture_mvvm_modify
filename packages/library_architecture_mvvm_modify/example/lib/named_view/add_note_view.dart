import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/description_text_form_field_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/note_fab_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/title_text_form_field_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/add_note_view_list_view_model.dart';

final class AddNoteView extends StatefulWidget {
  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

final class _AddNoteViewState extends State<AddNoteView> {
  final _lo = AddNoteViewListViewModel();

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
    _lo.notifyStreamStringsByStringsAndInGeneralZeroTask();
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.editTodoAddAppBarTitle),
      ),
      floatingActionButton: NoteFabWidget(_lo.noteFabWidgetListViewModel),
      body: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TitleTextFormFieldWidget(
                    _lo.titleTextFormFieldWidgetListViewModel),
                DescriptionTextFormFieldWidget(
                    _lo.descriptionTextFormFieldWidgetListViewModel)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
