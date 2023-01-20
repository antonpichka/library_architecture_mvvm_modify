import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/notes_overview_options_button_widget_list_view_model.dart';

class NotesOverviewOptionsButtonWidget
    extends StatelessWidget
{
  @protected
  final NotesOverviewOptionsButtonWidgetListViewModel lo;

  const NotesOverviewOptionsButtonWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NoteOption?>(
        stream: lo.getStreamNoteOption,
        builder: (BuildContext context,AsyncSnapshot<NoteOption?> asyncSnapshot)
        {
          final noteOption = asyncSnapshot.data;
          return buildSuccess(context, noteOption);
        });
  }

  @protected
  Widget buildSuccess(BuildContext context, NoteOption? noteOption) {
    final l10n = context.l10n;
    return PopupMenuButton<EnumNoteOption>(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      initialValue: noteOption?.getOneParametersNamedForNotesOverviewOptionsButtonWidget,
      tooltip: l10n.todosOverviewFilterTooltip,
      onSelected: (EnumNoteOption option) {
        lo.callMethodUpdateListNoteToSqfliteServiceParameterBoolAndInGeneralOneTask(option);
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: EnumNoteOption.toggleAll,
            enabled: noteOption?.isOneParametersNamedForNotesOverviewOptionsButtonWidget() ?? false,
            child: Text((noteOption?.isTwoParametersNamedForNotesOverviewOptionsButtonWidget() ?? false)
                ? l10n.todosOverviewOptionsMarkAllIncomplete
                : l10n.todosOverviewOptionsMarkAllComplete,
            ),
          ),
          PopupMenuItem(
            value: EnumNoteOption.clearCompleted,
            enabled: noteOption?.isThreeParametersNamedForNotesOverviewOptionsButtonWidget() ?? false,
            child: Text(l10n.todosOverviewOptionsClearCompleted),
          ),
        ];
      },
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}