import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/TextFieldSearchWidgetListViewModel.dart';

base class TextFieldSearchWidget extends StatefulWidget {
  final TextFieldSearchWidgetListViewModel lo;

  const TextFieldSearchWidget(this.lo);

  @override
  State<TextFieldSearchWidget> createState() => TextFieldSearchWidgetState();
}

base class TextFieldSearchWidgetState extends State<TextFieldSearchWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (text) => callbackOnChanged(context, text),
        decoration: buildInputDecoration(context));
  }

  @protected
  InputDecoration buildInputDecoration(BuildContext buildContext) {
    return const InputDecoration(labelText: 'City', hintText: 'Chicago');
  }

  @protected
  void callbackOnChanged(BuildContext context, String text) {
    widget.lo.setFieldByStringsAndInGeneralZeroTask(text);
    return;
  }
}
