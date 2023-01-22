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