import 'package:flutter/widgets.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_single_widget/base_single_widget.dart';

class SingleWidget extends BaseSingleWidget {
  final Widget _sampleWidget;
  SingleWidget(this._sampleWidget);

  @override
  Widget buildSingleWidgetUsingAList(BuildContext context, List<DomainModel> list) {
    return _sampleWidget;
  }

  @override
  Widget buildSingleWidgetUsingTheModel(BuildContext context, DomainModel model) {
    return _sampleWidget;
  }

}