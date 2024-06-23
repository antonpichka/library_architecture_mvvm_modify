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