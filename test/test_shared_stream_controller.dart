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
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';
import '../example/libs/model/user/user.dart';

class ABView {
  AWidget aWidget = AWidget();
  BWidget bWidget = BWidget();
}

class AWidget {
  final SharedStreamController _sharedStreamController =
  SharedStreamController();

  void listenGo() {
    _sharedStreamController
        .getStreamModelForWidget(this, ABView, AWidget, User)
        .listen((event) {
          if (kDebugMode) {
            print("A: ${event.toString()}");
          }
        });
  }

  void setModel() {
    _sharedStreamController
        .setModelForWidget(this, ABView, BWidget, User, User("OpaTOP1", "JacobOdd"));
  }

  void notify() {
    _sharedStreamController
        .notifyStreamModelForWidgetIfHasListener(this, ABView, BWidget, User);
  }
}

class BWidget {
  final SharedStreamController _sharedStreamController =
  SharedStreamController();

  void listenGo() {
    _sharedStreamController
        .getStreamModelForWidget(this, ABView, BWidget, User)
        .listen((event) {
          if (kDebugMode) {
            print("B: ${event.toString()}");
          }
        });
  }

  void setModel() {
    _sharedStreamController
        .setModelForWidget(this, ABView, AWidget, User, User("top100(", "GraySs"));
  }

  void notify() {
    _sharedStreamController
        .notifyStreamModelForWidgetIfHasListener(this, ABView, AWidget, User);
  }
}

void main() {
  test("test SharedStreamController Success", () {
    SharedStreamController.setMapForViewAndWidget(
        mapModelForWidget:  {ABView : {
          AWidget : {User : User.getDefaultUser},
          BWidget : {User : User.getDefaultUser}
        }},
        mapStreamControllerForModelForWidget: {ABView : {
          AWidget : {User : StreamController<User>.broadcast()},
          BWidget : {User : StreamController<User>.broadcast()}
        }});
    ABView abView = ABView();
    abView.aWidget.listenGo();
    abView.bWidget.listenGo();

    abView.aWidget.setModel();
    abView.aWidget.notify();
    abView.bWidget.setModel();
    abView.bWidget.notify();

    SharedStreamController.dispose();

    abView.bWidget.setModel();
    abView.bWidget.notify();
  });
}