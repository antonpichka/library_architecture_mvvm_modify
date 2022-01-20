import 'package:library_architecture_mvvm_modify/base_repository/base_repository.dart';

abstract class BaseRepositoryFactory {
  BaseRepository createRepository();
}