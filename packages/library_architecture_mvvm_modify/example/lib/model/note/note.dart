import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

base class Note extends BaseModel {
  static const String constParameterUuIdForSqflite = "uuId";
  static const String constParameterNameForSqflite = "name";
  static const String constParameterDescriptionForSqflite = "description";
  static const String constParameterIsCompletedForSqflite = "is_completed";

  String? uuId;
  String? name;
  String? description;
  bool? isCompleted;

  Note.success(this.name, this.description, this.isCompleted)
      : uuId = const Uuid().v4(),
        super.success(null) {
    uniqueId = uuId;
  }
  Note.successWhereIsExistsParameterUuid(
      this.uuId, this.name, this.description, this.isCompleted)
      : super.success(uuId);
  Note.exception(super.exception) : super.exception();
  factory Note.fromMapSqflite(Map<String, dynamic> map) {
    final uuId = map[constParameterUuIdForSqflite];
    final name = map[constParameterNameForSqflite];
    final description = map[constParameterDescriptionForSqflite];
    final isCompleted = map[constParameterIsCompletedForSqflite] == 1;
    return Note.successWhereIsExistsParameterUuid(
        uuId, name, description, isCompleted);
  }

  Map<String, dynamic> toMapSqflite() {
    return {
      constParameterUuIdForSqflite: uuId,
      constParameterNameForSqflite: name,
      constParameterDescriptionForSqflite: description,
      constParameterIsCompletedForSqflite: isCompleted == true ? 1 : 0
    };
  }

  static Note get getNoteForSuccess => Note.success("", "", false);
  @visibleForTesting
  static Note get getNoteForSuccessWhereUnitTest =>
      Note.successWhereIsExistsParameterUuid("", "", "", false);

  String? get getOneParametersNamedForNotesListViewWidget {
    return name;
  }

  String? get getTwoParametersNamedForNotesListViewWidget {
    return description;
  }

  String? get getThreeParametersNamedForNotesListViewWidget {
    return uuId;
  }

  set setOneParametersNamedForNotesListViewWidget(bool isCompleted) {
    this.isCompleted = isCompleted;
  }

  @nonVirtual
  bool? isEmptyByTrimParameterName() {
    return (name?.trim() ?? "").isEmpty;
  }

  bool? isOneParametersNamedForNotesListViewWidget() {
    return isCompleted;
  }

  bool? isTwoParametersNamedForNotesListViewWidget() {
    return !isCompleted!;
  }
}
