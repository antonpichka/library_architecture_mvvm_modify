import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/note_fab_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/utility.dart';

class NoteFabWidget
    extends StatelessWidget
{
  @protected
  final NoteFabWidgetListViewModel lo;

  const NoteFabWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final floatingActionButtonTheme = theme.floatingActionButtonTheme;
    final fabBackgroundColor = floatingActionButtonTheme.backgroundColor ??
        theme.colorScheme.secondary;
    return FloatingActionButton(
      tooltip: l10n.editTodoSaveButtonTooltip,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      backgroundColor:  fabBackgroundColor,
      onPressed: () => onPressed(context),
      child: buildChild(context)
    );
  }

  @protected
  void onPressed(BuildContext context) {
    lo.insertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask(
            (String message) => scaffoldFeatureControllerForException(context,message),
            () => Navigator.of(context).pop());
  }

  @protected
  Widget buildChild(BuildContext context) {
    return const Icon(Icons.check_rounded);
  }
}