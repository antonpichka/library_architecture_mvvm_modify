import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';
import 'package:meta/meta.dart';

base class ListNoteOption<T extends NoteOption> extends BaseListModel<T> {
  ListNoteOption.success(super.listModel) : super.success();
  ListNoteOption.exception(super.exception) : super.exception();

  static ListNoteOption get getListNoteOptionForSuccess =>
      ListNoteOption.success([]);
  @visibleForTesting
  static ListNoteOption get getListNoteOptionForSuccessWhereUnitTest =>
      ListNoteOption.success([
        NoteOption.success(
            EnumNoteOption.toggleAll,
            ListNote.success([
              Note.successWhereIsExistsParameterUuid("", "", "", false),
              Note.successWhereIsExistsParameterUuid("", "", "", false)
            ])),
        NoteOption.success(
            EnumNoteOption.toggleAll,
            ListNote.success([
              Note.successWhereIsExistsParameterUuid("", "", "", false),
              Note.successWhereIsExistsParameterUuid("", "", "", false)
            ]))
      ]);
}
