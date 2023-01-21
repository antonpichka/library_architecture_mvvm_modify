import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/i_initialized_stream_note/initialized_stream_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_delete_parameter_string_for_uuid.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_update_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/description_text_form_field_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/note_delete_icon_button_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/note_edit_fab_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/title_text_form_field_widget_list_view_model.dart';

class EditNoteViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _stringsQThereIsStateViewModelForTitle =
  StringsQThereIsStateViewModel(InitializedStreamStrings());
  final _stringsQThereIsStateViewModelForDescription =
  StringsQThereIsStateViewModel(InitializedStreamStrings());
  final _noteQThereIsStateViewModel =
  NoteQThereIsStateViewModel(InitializedStreamNote());

  // ModelQNamedServiceViewModel
  final _noteQSqfliteServiceViewModelUsingUpdateParameterNote =
  NoteQSqfliteServiceViewModelUsingUpdateParameterNote();
  final _noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId =
  NoteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId();

  // NamedWidgetListViewModel
  late final NoteEditFabWidgetListViewModel noteEditFabWidgetListViewModel;
  late final TitleTextFormFieldWidgetListViewModel titleTextFormFieldWidgetListViewModel;
  late final DescriptionTextFormFieldWidgetListViewModel descriptionTextFormFieldWidgetListViewModel;
  late final NoteDeleteIconButtonWidgetListViewModel noteDeleteIconButtonWidgetListViewModel;

  EditNoteViewListViewModel() {
    noteEditFabWidgetListViewModel = NoteEditFabWidgetListViewModel(
        _stringsQThereIsStateViewModelForTitle,
        _stringsQThereIsStateViewModelForDescription,
        _noteQThereIsStateViewModel,
        _noteQSqfliteServiceViewModelUsingUpdateParameterNote);
    titleTextFormFieldWidgetListViewModel = TitleTextFormFieldWidgetListViewModel(
        _stringsQThereIsStateViewModelForTitle);
    descriptionTextFormFieldWidgetListViewModel = DescriptionTextFormFieldWidgetListViewModel(
        _stringsQThereIsStateViewModelForDescription);
    noteDeleteIconButtonWidgetListViewModel = NoteDeleteIconButtonWidgetListViewModel(
        _noteQThereIsStateViewModel,
        _noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId);
  }

  @override
  void dispose() {
    _stringsQThereIsStateViewModelForTitle.dispose();
    _stringsQThereIsStateViewModelForDescription.dispose();
    _noteQThereIsStateViewModel.dispose();
  }

  Future<void> setNoteByNoteAndInGeneralZeroTask(Note note)
  async {
    _noteQThereIsStateViewModel
        .setNote = note;
    _stringsQThereIsStateViewModelForTitle
        .getStrings
        ?.field = note.name ?? "";
    _stringsQThereIsStateViewModelForDescription
        .getStrings
        ?.field = note.description ?? "";
    await Future.delayed(const Duration(milliseconds: 100));
    _stringsQThereIsStateViewModelForTitle
        .notifyStreamStrings();
    _stringsQThereIsStateViewModelForDescription
        .notifyStreamStrings();
  }
}