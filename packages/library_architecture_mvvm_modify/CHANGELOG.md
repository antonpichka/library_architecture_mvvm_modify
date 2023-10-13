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