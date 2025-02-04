## 6.1.2

- chore(assets): 'IDispose' changed
- chore(assets): Removed diagrams
- documentation(package/README.md): 'IDispose' moved from 'Not Architectural Objects' to 'Architectural Objects', and some bugs in other sections fixed

## 6.1.1

- documentation(package/README.md): In the 'ListModelWrapper' subsection in the 'Architectural Objects' section, updated 'Knows about'

## 6.1.0

- refactoring(package/example/lib): Updated example
- documentation(package/README.md): In the 'Result' subsection in the 'Not Architectural Objects' section, updated rules
- chore(assets): 'ListModelWrapper' now knows about 'ModelWrapper' thereby reducing the number of lines of code
- chore(assets): Removed diagrams
- documentation(package/README.md): In the 'Result' subsection in the 'Not Architectural Objects' section, added rules and in the 'Without 'Result'' subsection in the 'Diagrams' section, updated
- documentation(package/README.md): In the 'Model' subsection in the 'Architectural objects' section, the following was removed: 'If complex logic is needed, then inside a certain model we create model catalogs with the prefix of a certain model 'ModelRRNamed''
- documentation(package/README.md): 'Global variables name' rules have been added to all 'Architectural objects' subsections

## 6.0.9

- refactoring(package/example): dart format .
- documentation(package/README.md): Delete the section 'General Rules', and move this 'General Rules' to all subsections of 'Architectural Objects', and add rules like 'Local variables name', 'Use try/catch (Yes/No)'
- refactoring(package/example): Updated the example
- refactoring(package/lib/src/named_service/temp_cache_service.dart): In the ‘dispose’ method in the ‘for’ loop where ‘if’ replace ‘return’ with ’continue’

## 6.0.8

- refactoring(package/example): upd

## 6.0.7

- refactoring(package/example): upd
- refactoring(package/example): upd
- refactoring(package/lib/src/named_service/temp_cache_service.dart): In the 'getNamed' method, the parameter is named 'defaultValue', where the 'dynamic' type is replaced by the generic 'T' of the same method
- refactoring(package/lib/src/exception_controller.dart): Removed null safety in constructor parameter named 'exception'
- refactoring(package/lib/src/base_named_stream_w_state/default_stream_w_state.dart): Changed key names in 'LocalException'

## 6.0.6

- chore(assets): Updated 'rao_w_iao.png'
- documentation(package/README.md): Updated subsection 'NamedUtility' in section 'Architectural Objects'

## 6.0.5

- chore(assets): Changed the image 'Theory of Balance in Software Architecture'
- documentation(package/README.md): Moved theory from 'Architectural Objects' section to new section 'Theory of Balance in Software Architecture'
- documentation(package/README.md): Added subsections ‘CurrentModelWIndex', ‘IDispose’ to section 'Not Architectural Objects' (Also made some changes to 'Architectural Objects')
- documentation(package/README.md): Added subsections 'Without ‘CurrentModelWIndex’', 'Without ‘IDispose’' to section 'Diagrams'
- documentation(package/README.md): Removed text about the number of diagrams in the 'Diagrams' section
- chore(assets): updated diagrams where is existing 'CurrentModelWIndex', 'IDispose'

## 6.0.4

- documentation(package/README.md): updated section 'NamedUtility' where I added more separators in brackets (where the keys are) to make it more correct
- documentation(package/README.md): updated section 'Design Patterns' where I removed 'TempCacheProvider' from the 'Singleton' design pattern because it was not implemented

## 6.0.3

- chore(assets): replaced 'roac_w_ioac.png' on 'rao_w_iao.png'
- chore(assets): added diagrams
- documentation(package/README.md): updated sections 'Why Did I Create Software Architecture', 'Architectural Objects', 'NamedUtility', 'NamedVM', 'Model', 'ModelWrapperRepository'. The section has been completely added 'Diagrams'

## 6.0.2

- documentation(package/README.md): updated sections 'General Rules', 'NamedUtility', 'NamedVM', 'DataForNamed', 'Diagrams'
- refactoring(package/example/lib/main.dart): updated example
- chore(assets/roac_w_ioac.png): added
- Note: The next patch will definitely have diagrams, as there were some shortcomings

## 6.0.1

- documentation(package/README.md): Improved understanding of chapters such as 'NamedUtility', 'NamedVM'
- refactoring(.): Rearranging the code without significant changes
- fix(package/lib/src/base_model/base_model_tt_named_tt_named_tt_named_tt_iterator): Method 'currentModelWIndex' was called twice in method 'getSortedListModelFromListModelParameterListModelIterator'. Now is called only once
- Note: The next patch will have diagrams that will explain everything about the software architecture.

## 6.0.0

- Added objects 'ModelWrapper', 'ListModelWrapper', the purpose of which is to contain 'Model', 'ListModel'
- Changed 'ModelRepository' to 'ModelWrapperRepository'. This was done so that the repository was transparent (without encapsulation), and as a result easy to understand, should not know about 'Model', 'ListModel', so as not to call their methods. The purpose of the repository is to take data from the network or DB, convert the map to a list, and pass this list to 'ModelWrapper', or 'ListModelWrapper', where in turn they will create a 'Model' or 'ListModel' object and using the 'ResultWithModelWrapper' or 'ResultWithListModelsWrapper' object, which determines whether there was a success or an exception, will know about 'ModelWrapper' or 'ListModelWrapper' and will be able to pass it to the endpoint
- The documentation has been updated, where all the library objects are described, and which object knows about whom is described. And I plan to add a diagram that will show the interaction between all the library objects, and I will add other diagrams, where it will be shown, if you remove one object, what will be the consequences if this object is not there
NOTE: Some classes have been refactored (will have to be refactored a little)

## 5.0.1

- Updated documentation

## 5.0.0

- Refactoring 'ModelRepository'
- Refactoring 'ModelTTNamedTTNamedTTNamedTTIterator'
- Updated documentation

## 4.0.0

- A new 'TempCacheProvider' object has been created, with which you can share data between 'NamedVM' directly. The reason for this was a data leak problem in 'TempCacheService', it was impossible to close a stream in a certain 'NamedVM'. And there was also a problem in that 'TempCacheService' had to connect to 'ModelRepository' in order to then get the data we needed from 'NamedVM' via 'ModelRepository'. Of course, this took a lot of time, but now it doesn't
- 'TempCacheService' is used inside 'TempCacheProvider', and in the future use only 'TempCacheProvider'
- One method name in 'TempCacheService' was changed, the code will have to be refactored a little (Yes, it's my fault, but it was necessary)

## 3.1.1

- Update documentation in the 'NamedUtility','NamedVM','Model' sections and add section 'Software Architecture Evaluation Theory'

## 3.1.0

- Fix documentation

## 3.0.9

- Fix documentation

## 3.0.8

- Updated documentation
- Rename method in 'TempCacheService' class from 'updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParameterOne' to 'updateWNotificationFromKeyTempCacheAndValueParameterOne'

## 3.0.7

- Updated documentation in the 'NamedVM' section

## 3.0.6

- Updated documentation in the 'ModelRepository' section

## 3.0.5

- Updated 'BaseModelRepository'
- Updated example
- Updated documentation in the 'ModelRepository' section

## 3.0.4

- Updated documentation in the "ModelRepository" section

## 3.0.3

- Added chapter with name 'Design Patterns'

## 3.0.2

- Fix bugs

## 3.0.1

- Updated Example

## 3.0.0

- Replaced 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' with added 'ModelRepository' because inheriting one class is easier than a thousand classes. 
- Replaced the 'RWTMode' design pattern with a stripped-down version in the 'ModelRepository'.
- Now creating an application has become several times easier

## 2.0.2

- Documentation has become more correct and expanded

## 2.0.1

- In "BaseModelWNamedWNamedWNamedIterator" the abstract method "currentModelWIndex" will return an object of the "CurrentModelWIndex" class,
and also remove the "IIterator" interface and the "moveNext()" method
- In "BaseDataForNamed","BaseModel","BaseListModel" write an abstract method "toString()"
- In "ExceptionController" write the "toString()" method
- In "TempCacheService" the method name should be "update_where_stream_notification_is_possible_from_key_temp_cache_and_value_parameter_one"
- Rework all "example" as in "library_architecture_mvvm_modify_python"

## 2.0.0

- 'NamedViewModel' has become simplified, now there is design and logic, since providing the state of the object and the stream gave 'BaseNamedStreamWState' and only providing the state of the object 'BaseNamedState', then the 'NamedViewModel' itself did nothing, only separated test and release, which allowed to simulate obtaining data and obtaining real data to make it easier to test design, queries, etc. But 'RWTMode' was added which now performs this function in a simplified way, don't even need to writer a class, let alone create files

## 1.0.0

- Now you can use the architectural library anywhere. A large project is being completed, but you can already see how all the components of the architecture are written. 2 years were spent writing this architectural library. This library was rewritten many times, and finally reached the canon. In general, the 2 most popular patterns “Observer” and “Singleton” are used; one could also use “Abstract factory”, but I decided to make it a rule that there should be only 6 files in the “named_vm” folder, and all these 6 classes are designated by the “final” modifier ". This was done in order not to waste extra time on creating new files and copying some pieces of code, or distributing these pieces of code into different protected methods. It will be faster to refactor the code, or create a new "named_vm". Refactoring will indeed be faster, since the names of the classes are informative, and each block of code (where there is a condition) is divided into private methods, which are also named informatively. And if you need the old implementation, then use GitHub for this, since any normal coder will tag all his releases.

- Also, in addition to 2 patterns ("Observer", "Singleton"), the code is based on various rules (Where described in the README file, in the documentation section). If you need to share temporary data, then use "TempCacheService". Inheritance of the model and its model list, as well as model data sources, is present, and of the model iterator. Services are “final”, if you need to expand, then add new methods inside the class

- The reason for creating the architecture? Existing architectures (Even so-called clean architectures) lacked simplicity and control (what and where, and how it should be written)

- In general, this is the whole architecture, which gives simplicity and transparency, as well as efficiency (At first it will seem complicated, but any architecture requires research)

## 0.3.2

- Pre-release v1.0.0 (Nothing major has changed)

## 0.3.1

- Dependency updates: 'meta: ^1.11.0' to 'meta: ^1.10.0'

## 0.3.0

- Pre-release v1.0.0 / also there are some method and class name changes
- Updated example

## 0.2.9

- Added 'delete' method and static 'clear' method to 'TempCacheService' class
- Updated example

## 0.2.8

- There are now 2 'update' methods in the 'TempCacheService' class. The first method updates according to the standard, and the second method updates and sends a notification to the stream if there are subscribers and the stream is not closed

## 0.2.7

- Simplified and optimized 'TempCacheService'

## 0.2.6

- Adding full documentation to code
- Changed logo

## 0.2.5

- Added more documentation and changed some names of methods and classes

## 0.2.4

- Adding documentation
- Updated example

## 0.2.3

- Updated example

## 0.2.2

- Globally changing class and method names

## 0.2.1

- Global update (Major change: Removing 'BaseDataForNamedQThereIsStreamStateViewModel' and moving methods to 'NamedViewQViewModel' class, which was previously called 'NamedViewListViewModel')
- Dependency update 'lints' from 2.1.1 to 3.0.0

## 0.2.0

- Adding 'const' to classes and adding required abstract methods to 'BaseNamedViewListViewModel' and deleted null safety to class 'BaseDataForNamedQThereIsStreamStateViewModel'('DataForNamed' should be final, but its parameters are not final, but there may be an exception if there is ready data)

## 0.1.9

- Optimization 'TempCacheService'

## 0.1.8

- 'TempCacheService' you can now assign a name to the stream. This was done so that you can get the same key from temp cache anywhere. That is, before this, whoever managed to listen to the stream first received the latest data, and the remaining streams that were subscribed to the same key from the temp cache did not receive the latest data (Because the stream that first listened to the last data of a certain key denied access to avoid spam)

## 0.1.7

- Adding annotations 'immutable' and 'const' to 'strings' 
- New Example

## 0.1.6

- Now 'Model' has 1 constructor. object and errors will take the class "Result"

## 0.1.5

- Updated 'meta' and 'lints' dependencies
- Import 1 file and get all files and added parameter 'isLoading' to 'BaseDataForNamed' 
- Rename files 
- Most classes became base and not interface

## 0.1.4

- Now "BaseDataForNamed" has only 1 constructor, and deleting elements in "BaseListModel" is now only through the String parameter (We delete by a unique identifier, it makes no sense to pass the entire object)

## 0.1.3

- Added method clone object to classes "BaseModel" and "BaseListModel", and change method sorted to class "BaseModelQNamedIterator"

## 0.1.2

- Deleted objects "BaseModelQThereIsStateViewModel" and "IStateModel" and "IInitializedStateModel"

## 0.1.1

- "BaseDataForNamedQThereIsStreamStateViewModel" and "BaseModelQThereIsStateViewModel". Fixed interfaces in these classes (they are not public now)

## 0.1.0

- Simplified a lot of things, especially with the "BaseException" class and its descendants

## 0.0.9

- Deleted FBDS
- Changed the name of some unimportant classes

## 0.0.8

- Rename type objects "BaseDataForNamedWidgetOrView" to "BaseDataForNamed"
- Full delete documentation

## 0.0.7

Divide and rule.

- Decreased permissions for such objects "BaseModelQNamedServiceViewModel", "BaseModel" etc
- Added objects "BaseDataForNamedWidgetOrView", "BaseDataForNamedWidgetOrViewQThereIsStreamStateViewModel" etc. and gave him the duties that he took away from "Model" objects.
- The object "BaseDataForNamedWidgetOrView" and its auxiliary classes will be shown in widgets, views, and only they have streams
- The object "BaseModel" and its auxiliary classes will get data from the DataSource
- Completely removed the examples and added one single one, where everything you need is

## 0.0.6

- Migration to Dart version v3.0.0

## 0.0.5

- Added 'Todo' example to 'example' folder
- Removed documentation section in 'README.md' file
- Ran the command 'dart format .' in the 'example' folder

## 0.0.4

- Updated dependencies from meta 1.9.0 to meta 1.8.0 (flutter sdk depends on meta 1.8.0, meta 1.8.0 is required.)

## 0.0.3

- Added folder 'example' with file 'EXAMPLE.md' for pub.dev (although all examples are given in the README.md file)
- Passed static analysis of files, namely formatted using the command 'dart format .' for pub.dev
- Updated dependencies, and replaced dependency from 'flutter_lints' to 'lints'

## 0.0.2

- Updated image path in README.md
- Added documentation to the derived code

## 0.0.1

Initial Version of the library.

- Includes the ability to create a custom ModelQNamedServiceViewModel by extending `BaseModelQNamedServiceViewModel` class.
- Includes the ability to create a custom ModelQThereIsStateViewModel by extending `BaseModelQThereIsStateViewModel` class.
- Includes the ability to create a custom NamedViewListViewModel by extending `BaseNamedViewListViewModel` class.
- Includes the ability to create a custom Model by extending `BaseModel` class.
- Includes the ability to create a custom ListModel by extending `BaseListModel` class.
- Includes the ability to create a custom StreamModel by implementation `IStreamModel` class.
- Includes the ability to create a custom NamedException by extending `BaseException` class.
- Includes the ability to create a custom NamedIterator by extending `BaseIterator` class.
- When extending `BaseModel` or `BaseListModel`, it will be necessary to extend `BaseModel` or `BaseListModel` and `BaseModelQThereIsStateViewModel` and `BaseModelQNamedServiceViewModel` and `FBDS` (if you have it)
- When extending `NamedWidget` or `NamedWidgetListViewModel`, you will need to extend the opposite class (`NamedWidget` or `NamedWidgetListViewModel`)
- When adding new functionality to the application, you will only need to extend the above assigned classes
- Refactoring is minimized. NamedView and NamedViewListViewModel, these classes are subject to change