<p align="center">
<img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/logo_library_architecture_mvvm_modify.png" alt="Logo Library Architecture MVVM Modify"/>
</p>

---

## Overview

The library is implemented according to the principles of SOLID, and is an example of a clean architecture

<p align="center"> 
<img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/library_architecture_mvvm_modify.png" alt="Library Architecture MVVM Modify"/>
</p>

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
                <img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/firebase_login.gif" width="200"/>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
               <img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/github_search.gif" width="200"/>
            </td>
            <td style="text-align: center">
               <img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/weather.gif" width="200"/>
            </td>
            <td style="text-align: center">
               Coming Soon
            </td>
        </tr>
    </table>
</div>

- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_counter">Counter</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_infinite_list">Infinite List</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_firebase_login">Firebase Login</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_github_search">Github Search</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_weather">Weather</a>

## Documentation

### Architecture Components
- #### ModelQThereIsStateViewModel
  - ##### IInitializedStreamModel
  - ##### IStreamModel
- #### ModelQNamedServiceViewModel
  - ##### NamedService
  - ##### IModelQNamedServiceDataSource
  - ##### FBDS
- #### NamedViewListViewModel
  - ##### NamedWidgetListViewModel
- #### NamedView
  - ##### NamedWidget

### Utility
- #### NamedException
- #### NamedIterator
- #### NamedStreamModel
- #### These files are not created by the programmer in his project (I will describe for clarification)
  - ##### IDispose 
  - ##### ExceptionController
  - ##### Result

## Maintainers

- [Anton Pichka](https://github.com/jacobodd)
