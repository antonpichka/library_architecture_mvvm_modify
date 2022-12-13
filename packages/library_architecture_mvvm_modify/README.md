<p align="center">
<img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/logo_library_architecture_mvvm_modify.png" alt="Logo Library Architecture MVVM Modify"/>
</p>

--- 

Pub: Coming Soon

## Overview

<p align="center"> 
<img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/library_architecture_mvvm_modify.png" alt="Library Architecture MVVM Modify"/>
</p>

This modification of MVVM was created to simplify development, namely, a system was created that a developer can monitor and make a minimum of errors. Errors that occur from ModelQNamedServiceDataSource files are displayed in the console, and try catch can only be used in ModelQNamedServiceDataSource (because only libraries that access the network or database can produce unexpected errors, and in other components, even if there are similar libraries, for example audio player, without try-catch way, since try catch spam makes the developer think many times in the code and their spam will affect the readability of the code.Also, all code is written through reverse if and in the body of the if construct, return is written, and the developer can read up to a certain if which it needs, not the whole method.Also, nested ifs are not written, which will also make the code more readable)

An example of writing code throughout the project (especially for the component NamedViewListViewModel, NamedWidgetListViewModel):
```c
// 1) Success (Readable code)
void methodOne(List list, bool isTrue) {
 if(list.length <= 0) {
  // code
  return;
 }
 if(!isTrue) {
  // code
  return;
 }
 // code
 return;
}
// 2) Failure (Unreadable code)
void methodTwo(List list, bool isTrue) {
 if(list.length > 0) {
  // code
  if(isTrue) {
   // code
  }
  // code
 } else {
  // code
 }
 // code
 return;
}
```
If your logic is too complex and you can only write nested ifs, then use private methods as an alternative to nested ifs

By the name of the files, you can understand the number of methods and the meaning of their execution (This only applies to these components ModelQNamedServiceViewModel,ModelQNamedServiceDataSource). 

All calculations and checks of the object before sending it to the DataSource are performed in FBDS (Function Before Data Source).

ModelQNamedServiceDataSource and ModelQNamedServiceViewModel are tied to a specific model and if you need to link models and get them as one object, then create an object and use aggregation (to place these objects into one).

There is also a service that collects local-network libraries (whose purpose is to retrieve data from the network or database) and each library is implemented according to the Singleton pattern.

The model, in addition to receiving data, can also return an error, this makes it easier to display errors in the view, so it requires writing less code in the NamedViewListViewModel or NamedWidgetListViewModel.

Also, a new component NamedViewListViewModel and NamedWidgetListViewModel has been added to MVVM, and you can create objects that control indicators (For example: EnumViewModelUsingGetNPForLoading, BoolViewModelUsingGetNPForLoading), also if you receive data from one model with a ModelQNamedServiceDataSource, and you need to load certain data into another model, then a NamedViewListViewModel or NamedWidgetListViewModel is required for this.

NamedViewListViewModel and NamedView (or NamedWidgetListViewModel and NamedWidget) are related and can only be used one-to-one.

The ModelQNamedServiceDataSource and ModelQNamedServiceViewModel, are related, but can be reused in any other NamedViewListViewModel and NamedWidgetListViewModel if needed.

RESULT: You can reuse NamedWidget with NamedWidgetListViewModel and ModelQNamedServiceDataSource with ModelQNamedServiceViewModel, and if you need a new implementation, you create new files so as not to affect working (old) code and therefore not create new problems (This also applies to the NamedViewListViewModel and NamedView component, BUT in these components you can replace lines 2 and 1 if you needed a different NamedWidgetListViewModel and NamedWidget)

## Examples

Examples taken for processing from library <a href="https://github.com/felangel/bloc#examples">BLoC</a>.

<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/counter.gif" width="200"/>
            </td>            
            <td style="text-align: center">
                <img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/infinite_list.gif" width="200"/>
            </td>
            <td style="text-align: center">
                Coming Soon
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
               Coming Soon
            </td>
            <td style="text-align: center">
               Coming Soon
            </td>
            <td style="text-align: center">
               Coming Soon
            </td>
        </tr>
    </table>
</div>

- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_counter">Counter</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_infinite_list">Infinite List</a>

## Documentation

### Architecture Components
- #### ModelQNamedServiceDataSource
  - ##### (List/Model)ForNamed(TIP/NP)
  - ##### NamedService
    - ###### NamedSingleton
- #### ModelQNamedServiceBackgroundModel
  - ##### FBDS
  - ##### CloneStreamModelForSuccess
  - ##### (List/Model)ForNamed(TIP/NP)
- #### ModelQNamedServiceViewModel
  - ##### FBDS
  - ##### CloneStreamModelForSuccess
  - ##### (List/Model)ForNamed(TIP/NP)
- #### NamedViewListViewModel
  - ##### NamedWidgetListViewModel
- #### NamedView
  - ##### NamedWidget

### Utility
- #### NamedTypeParameter
- #### NamedException
- #### NamedIterator
- #### NamedStreamModel
- #### These files are not created by the programmer in his project (I will describe for clarification)
  - ##### IDispose 
  - ##### ExceptionController

## License
```
Designed and developed by 2022 JacobOdd (Anton Pichka)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
