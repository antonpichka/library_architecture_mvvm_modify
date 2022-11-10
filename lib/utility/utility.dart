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

import 'package:flutter/foundation.dart';

void debugPrint(String text) {
  if (kDebugMode) {
    print(text);
  }
}

void debugPrintError(String text) {
  debugPrint('\x1B[31m$text\x1B[0m');
}

void debugPrintInfo(String text) {
  debugPrint('\x1B[34m$text\x1B[0m');
}