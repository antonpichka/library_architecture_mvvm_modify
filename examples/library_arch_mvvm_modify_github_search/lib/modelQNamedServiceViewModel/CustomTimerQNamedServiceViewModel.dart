import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class CustomTimerQNamedServiceViewModel<T extends CustomTimer,Y extends ListCustomTimer<T>,DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<T,Y,DataSource>
{
  CustomTimerQNamedServiceViewModel.thereIsDataSource(super.dataSource, super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  CustomTimerQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}