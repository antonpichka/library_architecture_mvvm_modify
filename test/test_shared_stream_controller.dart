/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';
import '../example/libs/model/user/user.dart';

class ABView {
  AWidget aWidget = AWidget();
  BWidget bWidget = BWidget();
}

enum EnumAWidgetForModel {
  user
}

class AWidget {
  final SharedStreamController _sharedStreamController =
  SharedStreamController();

  bool _isListen = false;

  bool get getIsListen {
    return _isListen;
  }

  Stream<User> get getStreamModelForWidget {
    return _sharedStreamController.getStreamModelForWidget(this, ABView, AWidget, EnumAWidgetForModel.user);
  }

  void listenGo() {
    _sharedStreamController
        .getStreamModelForWidget(this, ABView, AWidget, EnumAWidgetForModel.user)
        .listen((event) {
          _isListen = true;
          if (kDebugMode) {
            print("A: ${event.toString()}");
          }
        });
  }

  void setModel() {
    _sharedStreamController
        .setModelForWidget(this, ABView, BWidget, EnumBWidgetForModel.user, User("OpaTOP1", "JacobOdd"));
  }

  void notify() {
    _sharedStreamController
        .notifyStreamModelForWidgetIfHasListener(this, ABView, BWidget, EnumBWidgetForModel.user);
  }
}

enum EnumBWidgetForModel {
  user
}

class BWidget {
  final SharedStreamController _sharedStreamController =
  SharedStreamController();

  bool _isListen = false;

  bool get getIsListen {
    return _isListen;
  }

  Stream<User> get getStreamModelForWidget {
    return _sharedStreamController.getStreamModelForWidget(this, ABView, BWidget, EnumBWidgetForModel.user);
  }

  void listenGo() {
    _sharedStreamController
        .getStreamModelForWidget(this, ABView, BWidget, EnumBWidgetForModel.user)
        .listen((event) {
          _isListen = true;
          if (kDebugMode) {
            print("B: ${event.toString()}");
          }
        });
  }

  void setModel() {
    _sharedStreamController
        .setModelForWidget(this, ABView, AWidget, EnumAWidgetForModel.user, User("top100(", "GraySs"));
  }

  void notify() {
    _sharedStreamController
        .notifyStreamModelForWidgetIfHasListener(this, ABView, AWidget, EnumAWidgetForModel.user);
  }
}

void main() {
  SharedStreamController.setMapForWidgetAndView(
      mapModelForWidget: {ABView : {
        AWidget : {EnumAWidgetForModel.user : SCModel(StreamController<User>.broadcast(), User.getDefaultUser)},
        BWidget : {EnumBWidgetForModel.user : SCModel(StreamController<User>.broadcast(), User.getDefaultUser)}
      }},
      mapModelForView: {});
  ABView abView = ABView();
  abView.aWidget.listenGo();
  abView.bWidget.listenGo();

  test("test SharedStreamController Success", () async {
    abView.aWidget.setModel();
    abView.aWidget.notify();
    abView.bWidget.setModel();
    abView.bWidget.notify();

    await Future.delayed(const Duration(seconds: 5));
    expect(abView.aWidget.getIsListen,equals(true));
    expect(abView.bWidget.getIsListen,equals(true));
  });

  test("test SharedStreamController Dispose", () {
    var result = SharedStreamController.dispose();
      
    expect(result, equals(true));
  });
}