<p align="center">
<img src="/assets/logo_library_architecture_mvvm_modify.png" alt="Logo Library Architecture MVVM Modify"/>
</p>

--- 

Pub: Coming Soon

## Overview

<p align="center"> 
<img src="/assets/library_architecture_mvvm_modify_1_3_6.png" alt="Library Architecture MVVM Modify"/>
</p>

This modification of MVVM was created to simplify development, namely, a system was created that the developer can monitor and make a minimum of errors, errors from DataSource files are also displayed in the console, and try catch can only be used in DataSource.
By the name of the files, you can understand the number of methods and the meaning of their execution. All calculations and checks of an object before sending it to the DataSource are performed in FBDS (Function Before Data Source)
The DataSource and ViewModel are bound to a specific model and if we assume you need to bind the models and get them as 1 object with the DataSource then create that object and use aggregation to put those objects into 1. There is also a Service which collects libraries which take data from the network or database, and each library is implemented according to the Singleton pattern
Models, in addition to receiving their data, can also return an error, this simplifies the display of data and errors in the view, therefore, it requires writing less code in the ListViewModel
Also, a new ListViewModel component has been added to MVVM, and you can create objects that control indicators (For example: EnumViewModel, BoolViewModel), also if you receive data from one model with a DataSource, and you need to load certain data into another model, then ListViewModel is required for this.
ListViewModel and View are related and can be used one to one.
The DataSource and ViewModel are related, but can be reused in any other ListViewModel if needed.
For each Widget (if there is a function that accesses the DataSource, or it needs to be updated using a thread), a ListViewModel is also created, which is subordinate to the main ListViewModel, and the main ListViewModel is subordinate to the View

RESULT: You can reuse NamedWidget with NamedWidgetListViewModel and ModelQNamedServiceDataSource with ModelQNamedServiceViewModel, and if you need a new implementation then you create new files so you don't affect working (old) code and therefore you don't create new problems. Also, the speed of development of your project remains as high as it was from the very beginning of the project.

## Examples

<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <img src="/assets/counter.gif" width="200"/>
            </td>            
            <td style="text-align: center">
                <img src="/assets/infinite_list.gif" width="200"/>
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

- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/tree/main/examples/library_arch_mvvm_modify_counter">Counter</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/tree/main/examples/library_arch_mvvm_modify_infinite_list">Infinite List</a>

## Documentation

### Architecture Components
- #### ModelQNamedServiceDataSource
  - ##### NamedService
    - ###### NamedSingleton
- #### ModelQNamedServiceBackgroundModel
  - ##### FBDS
- #### ModelQNamedServiceViewModel
  - ##### FBDS
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
```xml
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
