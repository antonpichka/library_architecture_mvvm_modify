import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/notes_overview_filter_button_widget_list_view_model.dart';

class NotesOverviewFilterButtonWidget
    extends StatelessWidget
{
  @protected
  final NotesOverviewFilterButtonWidgetListViewModel lo;

  const NotesOverviewFilterButtonWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NoteSorted?>(
        stream: lo.getStreamNoteSorted,
        builder: (BuildContext context,AsyncSnapshot<NoteSorted?> asyncSnapshot)
        {
          final noteSorted = asyncSnapshot.data;
          switch(noteSorted?.getEnumNoteSortedForNotesOverviewFilterButtonWidget) {
            case EnumNoteSortedForNotesOverviewFilterButtonWidget.isEmptyListNote:
              return buildIsEmptyList(context,noteSorted);
            case EnumNoteSortedForNotesOverviewFilterButtonWidget.success:
              return buildSuccess(context,noteSorted);
            default:
              return Container();
          }
        });
  }

  @protected
  Widget buildIsEmptyList(BuildContext context, NoteSorted? noteSorted) {
    return Container();
  }

  @protected
  Widget buildSuccess(BuildContext context, NoteSorted? noteSorted) {
    final l10n = context.l10n;
    return PopupMenuButton<EnumNoteSorted>(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      initialValue: noteSorted?.getOneParametersNamedForNotesOverviewFilterButtonWidget,
      tooltip: l10n.todosOverviewFilterTooltip,
      onSelected: (EnumNoteSorted filter) {
        lo.setOneParametersNamedForNotesOverviewFilterButtonWidgetByNoteSortedAndInGeneralZeroTask(filter);
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: EnumNoteSorted.all,
            child: Text(l10n.todosOverviewFilterAll),
          ),
          PopupMenuItem(
            value: EnumNoteSorted.isNotCompleted,
            child: Text(l10n.todosOverviewFilterActiveOnly),
          ),
          PopupMenuItem(
            value: EnumNoteSorted.isCompleted,
            child: Text(l10n.todosOverviewFilterCompletedOnly),
          ),
        ];
      },
      icon: const Icon(Icons.filter_list_rounded),
    );
  }
}