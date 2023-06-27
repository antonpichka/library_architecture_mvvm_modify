import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/notes_list_view_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/utility.dart';

base class NotesListViewWidget extends StatelessWidget {
  @protected
  final NotesListViewWidgetListViewModel lo;

  const NotesListViewWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    lo.getListNoteFromSqfliteServiceNPAndInGeneralOneTask();
    return StreamBuilder<NotesIsLoading?>(
        stream: lo.getStreamNotesIsLoading,
        builder: (BuildContext context,
            AsyncSnapshot<NotesIsLoading?> asyncSnapshot) {
          final notesIsLoading = asyncSnapshot.data;
          switch (notesIsLoading?.getEnumNotesIsLoadingForNotesListViewWidget) {
            case EnumNotesIsLoadingForNotesListViewWidget.isLoading:
              return buildIsLoading(context, notesIsLoading);
            case EnumNotesIsLoadingForNotesListViewWidget.exception:
              return buildException(context, notesIsLoading);
            case EnumNotesIsLoadingForNotesListViewWidget.isEmpty:
              return buildIsEmpty(context, notesIsLoading);
            case EnumNotesIsLoadingForNotesListViewWidget.success:
              return buildSuccess(context, notesIsLoading);
            default:
              return Container();
          }
        });
  }

  @protected
  Widget buildIsLoading(BuildContext context, NotesIsLoading? notesIsLoading) {
    return const Center(child: CupertinoActivityIndicator());
  }

  @protected
  Widget buildException(BuildContext context, NotesIsLoading? notesIsLoading) {
    return Center(
      child: Text(
        notesIsLoading?.getOneParametersNamedForNotesListViewWidget ?? "",
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }

  @protected
  Widget buildIsEmpty(BuildContext context, NotesIsLoading? notesIsLoading) {
    final l10n = context.l10n;
    return Center(
      child: Text(
        l10n.todosOverviewEmptyText,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }

  @protected
  Widget buildSuccess(BuildContext context, NotesIsLoading? notesIsLoading) {
    return CupertinoScrollbar(
      child: ListView(
        children: [
          for (final note
              in notesIsLoading?.listNote?.listModel ?? List.empty())
            buildItemForSuccess(context, notesIsLoading, note)
        ],
      ),
    );
  }

  @protected
  Widget buildItemForSuccess(
      BuildContext context, NotesIsLoading? notesIsLoading, Note? note) {
    final theme = Theme.of(context);
    final captionColor = theme.textTheme.bodySmall?.color;
    return Dismissible(
      key: Key('noteListTile_dismissible_${note?.uuId}'),
      onDismissed: (_) {
        lo.deleteNoteToSqfliteServiceParameterStringAndInGeneralOneTask(note,
            (lastDeletedNote) {
          scaffoldMessengerStateForDeletedNote(context, lastDeletedNote,
              (insertNote) {
            lo.insertNoteToSqfliteServiceParameterStringAndInGeneralOneTask(
                insertNote);
          });
        });
      },
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        color: theme.colorScheme.error,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Icon(
          Icons.delete,
          color: Color(0xAAFFFFFF),
        ),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed("/$constEditNoteView", arguments: {
            constArgumentEditNoteView: note
          }).then((value) =>
              lo.getListNoteFromSqfliteServiceNPAndInGeneralOneTask());
        },
        title: Text(
          note?.getOneParametersNamedForNotesListViewWidget ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: (note?.isTwoParametersNamedForNotesListViewWidget() ?? false)
              ? null
              : TextStyle(
                  color: captionColor,
                  decoration: TextDecoration.lineThrough,
                ),
        ),
        subtitle: Text(
          note?.getTwoParametersNamedForNotesListViewWidget ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: Checkbox(
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            value: note?.isOneParametersNamedForNotesListViewWidget(),
            onChanged: (bool? value) {
              lo.updateNoteToSqfliteServiceParameterCompletedItemAndInGeneralOneTask(
                  note, value);
            }),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
