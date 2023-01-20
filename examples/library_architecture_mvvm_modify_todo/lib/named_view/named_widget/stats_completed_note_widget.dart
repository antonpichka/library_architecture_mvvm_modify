import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/stats_completed_note_widget_list_view_model.dart';

class StatsCompletedNoteWidget
    extends StatelessWidget
{
  @protected
  final StatsCompletedNoteWidgetListViewModel lo;

  const StatsCompletedNoteWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    return StreamBuilder<Int?>(
        initialData: Int.success(0),
        stream: lo.getStreamInt,
        builder: (BuildContext context,AsyncSnapshot<Int?> asyncSnapshot)
        {
          final ints = asyncSnapshot.data;
          return ListTile(
            leading: const Icon(Icons.check_rounded),
            title: Text(l10n.statsCompletedTodoCountLabel),
            trailing: Text(
              '${ints?.field}',
              style: textTheme.headline5,
            ),
          );
        });
  }
}