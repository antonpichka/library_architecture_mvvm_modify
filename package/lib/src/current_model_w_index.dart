import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class CurrentModelWIndex<T extends BaseModel> {
  final T currentModel;
  final int index;

  const CurrentModelWIndex(this.currentModel, this.index);
}
