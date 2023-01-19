import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

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