import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/description_text_form_field_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/note_delete_icon_button_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/note_edit_fab_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/named_widget/title_text_form_field_widget.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/edit_note_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/utility.dart';

class EditNoteView extends StatefulWidget {
  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final _lo = EditNoteViewListViewModel();

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
    _init();
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.editTodoEditAppBarTitle),
        actions: [
          NoteDeleteIconButtonWidget(
              _lo.noteDeleteIconButtonWidgetListViewModel)
        ],
      ),
      floatingActionButton:
          NoteEditFabWidget(_lo.noteEditFabWidgetListViewModel),
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

  void _init() {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map;
    final note = arguments[constArgumentEditNoteView] as Note;
    _lo.setNoteByNoteAndInGeneralZeroTask(note);
  }
}
