import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/list_model_iterator_fvm/local_list_model_iterator_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/list_model_iterator_fvm/network_list_model_iterator_fvm.dart';

abstract class LNListModelIteratorFVM
    implements
        LocalListModelIteratorFVM,
        NetworkListModelIteratorFVM
{
}