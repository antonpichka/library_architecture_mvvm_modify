<p align="center">
<img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/logo_library_architecture_mvvm_modify.png" alt="Logo Library Architecture MVVM Modify"/>
</p>

---

## Overview

The library is implemented according to the principles of SOLID, and is an example of a clean architecture

<p align="center"> 
<img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/library_architecture_mvvm_modify.png" alt="Library Architecture MVVM Modify"/>
</p>

Architectural weaknesses:
1) The named methods in the model are abstract and therefore it will be difficult for the programmer to read the source code in NamedView/NamedViewListViewModel and NamedWidget/NamedWidgetListViewModel and Model
2) Long start of the project (Yes, you will need to create the necessary files, as well as abstract each component so that you do not refactor these files in the future)

Architecture Benefits:
1) Reuse of all components of the architecture (Exception: NamedView, NamedViewListViewModel) and minimal code copying:
- If you need a widget that has already been written, but with some changes. You can inherit this widget and override methods that change the widget itself (For example: buildTextStyle,buildIcon)
- Or change the logic for this widget, which is located in the NamedWidgetListViewModel, you also inherit along with the NamedWidget, since the binding is 1k1.
- And if you want to change the logic in the model itself, then all the methods used from the model are abstract, and you only need to inherit this model, and you get the result you need. (Also, for the inherited model, you do not need to create a DataSource and ViewModel, since generics and abstract classes allow you to reuse, and if you have added new fields and you need to get from the data source, then these abstract classes solve the problem ((List/Model)ForNamed( TIP/NP))
2) By the name of the DataSource, ViewModel file, you can understand which libraries and methods are used and what kind of logic is there, as well as what data we receive and what data we send
(For example: UserQFirebaseAuthAndGoogleSignInService(ViewModel/DataSource)UsingUpdateNPForAuthGoogle, you can understand from the name
1. Get User
2. We use the FirebaseAuth, GoogleSignIn libraries
3. The Update method is used without a parameter (No Parameter)
4. For authorization in Google)
3) In the Future, the project will be easy for you to expand and less prone to errors than in standard architectures, where you need to refactor files and create new problems that could have been avoided, as well as rewrite tests for these edited files
4) Components and models are written 1 time (Exception: unless there was a bug initially, or your code did not match the task before the release), after the release, if the task has changed, then create new files, or if the task is similar, use inheritance (NamedWidget,NamedWidgetListViewModel,Model), and most importantly, unit tests and ui tests for components are written 1 time (And if you rewrite tests or old code, then it turns out that your work was devalued, or the work of the person who wrote this code)

Initially, the idea of creating this architecture was to minimize code refactoring. I confess that I hate refactoring code, it's terrible and painful, and I would give up programming if I could not create my own library, but this is the profession where it is possible. And it became much easier for me to create applications, since there is much less code refactoring

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
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_firebase_login">Firebase Login</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_github_search">Github Search</a>

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
