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