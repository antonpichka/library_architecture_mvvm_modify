import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_insert_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/description_text_form_field_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/note_fab_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/title_text_form_field_widget_list_view_model.dart';

class AddNoteViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _stringsQThereIsStateViewModelForTitle =
      StringsQThereIsStateViewModel(InitializedStreamStrings());
  final _stringsQThereIsStateViewModelForDescription =
      StringsQThereIsStateViewModel(InitializedStreamStrings());

  // ModelQNamedServiceViewModel
  final _noteQSqfliteServiceViewModelUsingInsertParameterNote =
      NoteQSqfliteServiceViewModelUsingInsertParameterNote();

  // NamedWidgetListViewModel
  late final NoteFabWidgetListViewModel noteFabWidgetListViewModel;
  late final TitleTextFormFieldWidgetListViewModel
      titleTextFormFieldWidgetListViewModel;
  late final DescriptionTextFormFieldWidgetListViewModel
      descriptionTextFormFieldWidgetListViewModel;

  AddNoteViewListViewModel() {
    noteFabWidgetListViewModel = NoteFabWidgetListViewModel(
        _stringsQThereIsStateViewModelForTitle,
        _stringsQThereIsStateViewModelForDescription,
        _noteQSqfliteServiceViewModelUsingInsertParameterNote);
    titleTextFormFieldWidgetListViewModel =
        TitleTextFormFieldWidgetListViewModel(
            _stringsQThereIsStateViewModelForTitle);
    descriptionTextFormFieldWidgetListViewModel =
        DescriptionTextFormFieldWidgetListViewModel(
            _stringsQThereIsStateViewModelForDescription);
  }

  @override
  void dispose() {
    _stringsQThereIsStateViewModelForTitle.dispose();
    _stringsQThereIsStateViewModelForDescription.dispose();
  }

  Future<void> notifyStreamStringsByStringsAndInGeneralZeroTask() async {
    await Future.delayed(const Duration(milliseconds: 100));
    _stringsQThereIsStateViewModelForTitle.notifyStreamStrings();
    _stringsQThereIsStateViewModelForDescription.notifyStreamStrings();
  }
}
