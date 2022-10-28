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
import 'package:flutter_test/flutter_test.dart';
import 'package:library_architecture_mvvm_modify/utility/constants.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';
import '../example/libs/model/user/user.dart';

class ABView {
  final AWidgetForABView aWidget = AWidgetForABView();
  final BWidgetForABView bWidget = BWidgetForABView();

  void initSetAndNotify() {
    var user = User("top World", "OOOOps");
    var userTwo = User("top WorldTwo", "OOOOpsTwo");
    SharedStreamController.setModelsForListOfWidget(
        this,
        ABView,
        {
          AWidgetForABView : {EnumAWidgetForABViewForModel.user : user},
          BWidgetForABView : {EnumBWidgetForABViewForModel.user : userTwo}
        });
    SharedStreamController.notifyStreamModelsForListOfWidgetIfHasListener(
        this,
        ABView,
        {
          AWidgetForABView : [EnumAWidgetForABViewForModel.user],
          BWidgetForABView : [EnumBWidgetForABViewForModel.user],
        });
  }
}

enum EnumAWidgetForABViewForModel {
  user
}

class AWidgetForABView {
  bool _isListen = false;

  bool get getIsListen {
    return _isListen;
  }

  Stream<User> get getStreamModelForWidget {
    return SharedStreamController.getStreamModelForWidget(this, ABView, AWidgetForABView, EnumAWidgetForABViewForModel.user);
  }

  void listenGo() {
    SharedStreamController
        .getStreamModelForWidget(this, ABView, AWidgetForABView, EnumAWidgetForABViewForModel.user)
        .listen((event) {
          _isListen = true;
          debugPrint("A: ${event.toString()}");
        });
  }

  void setModel() {
    SharedStreamController
        .setModelForWidget(this, ABView, BWidgetForABView, EnumBWidgetForABViewForModel.user, User("TOP1", "JacobOdd"));
  }

  void notify() {
    SharedStreamController
        .notifyStreamModelForWidgetIfHasListener(this, ABView, BWidgetForABView, EnumBWidgetForABViewForModel.user);
  }
}

enum EnumBWidgetForABViewForModel {
  user
}

class BWidgetForABView {
  bool _isListen = false;

  bool get getIsListen {
    return _isListen;
  }

  Stream<User> get getStreamModelForWidget {
    return SharedStreamController.getStreamModelForWidget(this, ABView, BWidgetForABView, EnumBWidgetForABViewForModel.user);
  }

  void listenGo() {
    SharedStreamController
        .getStreamModelForWidget(this, ABView, BWidgetForABView, EnumBWidgetForABViewForModel.user)
        .listen((event) {
          _isListen = true;
          debugPrint("B: ${event.toString()}");
        });
  }

  void setModel() {
    SharedStreamController
        .setModelForWidget(this, ABView, AWidgetForABView, EnumAWidgetForABViewForModel.user, User("top100(", "GraySs"));
  }

  void notify() {
    SharedStreamController
        .notifyStreamModelForWidgetIfHasListener(this, ABView, AWidgetForABView, EnumAWidgetForABViewForModel.user);
  }
}

void main() {
  SharedStreamController.setMapForWidgetAndView(
      mapModelForWidget: {
        ABView : {
          AWidgetForABView : {EnumAWidgetForABViewForModel.user : SCModel(StreamController<User>.broadcast(), User.getDefaultUser)},
          BWidgetForABView : {EnumBWidgetForABViewForModel.user : SCModel(StreamController<User>.broadcast(), User.getDefaultUser)}
        }});
  ABView abView = ABView();
  abView.aWidget.listenGo();
  abView.bWidget.listenGo();

  test("test SharedStreamController Success", () async {
    abView.initSetAndNotify();
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