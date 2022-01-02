

import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_network_list_model_fvm.dart';

abstract class InsertModelToLNListModelFVM
    implements
        InsertModelToLocalListModelFVM,
        InsertModelToNetworkListModelFVM
{
}