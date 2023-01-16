import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumUserForMainView', () {
      final user = User.getUserForSuccess;
      expect(user.getEnumUserForMainView,EnumUserForMainView.authenticated);
    });
    test('getOneParametersNamedForOneUserTextWidget', () {
      final user = User.getUserForSuccess;
      expect(user.getOneParametersNamedForOneUserTextWidget,"");
    });
    test('getOneParametersNamedForTwoUserTextWidget', () {
      final user = User.getUserForSuccess;
      expect(user.getOneParametersNamedForTwoUserTextWidget,"");
    });
    test('getOneParametersNamedForCircleAvatarWidget', () {
      final user = User.getUserForSuccess;
      expect(user.getOneParametersNamedForCircleAvatarWidget,"");
    });
  });
  group('is success', () {
    test('isOneParametersNamedForCircleAvatarWidget', () {
      final user = User.getUserForSuccess;
      expect(user.isOneParametersNamedForCircleAvatarWidget(),true);
    });
    test('isTwoParametersNamedForCircleAvatarWidget', () {
      final user = User.getUserForSuccess;
      expect(user.isTwoParametersNamedForCircleAvatarWidget(),false);
    });
  });
}