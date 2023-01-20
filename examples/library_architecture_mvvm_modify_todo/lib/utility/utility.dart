import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

const constAddNoteView = "addNoteView";
const constEditNoteView = "editNoteView";
const constDetailsNoteView = "detailsNoteView";
const constArgumentEditNoteView = "argumentEditNoteView";
const constArgumentDetailsNoteView = "argumentDetailsNoteView";

ScaffoldMessengerState scaffoldMessengerStateForDeletedNote(BuildContext context,Note note,Function(Note insertNote) onPressed) {
  final l10n = context.l10n;
  final messenger = ScaffoldMessenger.of(context);
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          l10n.todosOverviewTodoDeletedSnackbarText(note.name ?? ""),
        ),
        action: SnackBarAction(
          label: l10n.todosOverviewUndoDeletionButtonText,
          onPressed: () {
            messenger.hideCurrentSnackBar();
            onPressed(note);
          },
        ),
      )
    );
  return messenger;
}

ScaffoldFeatureController scaffoldFeatureControllerForException(BuildContext context, String message) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}