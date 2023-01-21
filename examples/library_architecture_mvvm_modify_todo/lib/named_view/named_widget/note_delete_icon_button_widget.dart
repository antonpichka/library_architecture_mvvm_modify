import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/note_delete_icon_button_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/utility.dart';

class NoteDeleteIconButtonWidget
    extends StatelessWidget
{
  @protected
  final NoteDeleteIconButtonWidgetListViewModel lo;

  const NoteDeleteIconButtonWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: buildIcon(context),
      onPressed: () => onPressed(context));
  }

  @protected
  Widget buildIcon(BuildContext context) {
    return const Icon(
      Icons.delete,
      color: Colors.white,
    );
  }

  @protected
  void onPressed(BuildContext context) {
    lo.deleteNoteToSqfliteServiceParameterStringAndInGeneralOneTask(
            (message) => scaffoldFeatureControllerForException(context,message),
            () => Navigator.of(context).pop());
  }
}