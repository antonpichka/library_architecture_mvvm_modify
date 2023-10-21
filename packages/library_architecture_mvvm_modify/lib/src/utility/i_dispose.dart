import 'package:meta/meta.dart';

@immutable
abstract interface class IDispose {
  const IDispose();

  void dispose();
}
