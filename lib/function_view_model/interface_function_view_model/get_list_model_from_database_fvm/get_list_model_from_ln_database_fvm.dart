
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_network_database_fvm.dart';

abstract class GetListModelFromLNDatabaseFVM
    implements
        GetListModelFromLocalDatabaseFVM,
        GetListModelFromNetworkDatabaseFVM {
}