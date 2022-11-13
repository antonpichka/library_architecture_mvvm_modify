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
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_base_type_parameter.dart';

class DefaultStreamBaseTypeParameter
    implements IStreamBaseTypeParameter
{
  final StreamController<BaseTypeParameter> _streamControllerForBaseTypeParameter;
  final int _delayInSeconds;
  BaseTypeParameter _baseTypeParameter;

  DefaultStreamBaseTypeParameter(
      [this._delayInSeconds = 30]) :
        _streamControllerForBaseTypeParameter = StreamController<BaseTypeParameter>.broadcast(),
        _baseTypeParameter = BaseTypeParameter(null);

  @override
  void dispose() {
    if(!_streamControllerForBaseTypeParameter.isClosed) {
      _streamControllerForBaseTypeParameter.close();
    }
  }

  @override
  Stream<BaseTypeParameter> get getStreamBaseTypeParameter => _streamControllerForBaseTypeParameter.stream;

  @override
  BaseTypeParameter get getBaseTypeParameter => _baseTypeParameter;

  @override
  set setBaseTypeParameter(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameter = baseTypeParameter;
  }

  @override
  void notifyStreamBaseTypeParameter(
      Object thisClass)
  {
    if(!_streamControllerForBaseTypeParameter.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForBaseTypeParameter.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForBaseTypeParameter
        .sink
        .add(_baseTypeParameter);
  }

  @override
  Future<void> notifyStreamBaseTypeParameterUsingDelayInSeconds(
      Object thisClass)
  async {
    if(_streamControllerForBaseTypeParameter.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_streamControllerForBaseTypeParameter.hasListener) {
        _streamControllerForBaseTypeParameter
            .sink
            .add(_baseTypeParameter);
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
      }
    }
  }
}