
## Usage

[Here is an example of a project 'RBKaros' on Github on the architecture branch](https://github.com/JacobOdd/RBKaros/tree/architecture)

## Diagram

<img src="/example/mvvm_modify_architecture_shems_format_png.png"/>

## Testing Architecture

What exactly are we testing?
In order:
1) Model Objects (Example: model domain objects) - unit test
2) ModelDataSource Objects (Example: model local database or model network database) - integration test
3) ModelRepository Objects (Example: model repository, which subsequently call DataSource objects) - integration test
4) ModelViewModel Objects (Example: model view model, which subsequently call Repository object) - unit test
5) ModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed Objects - integration test
6) ListOfViewModelForNamedView Objects (Example: list of view models using realized methods for named view, which subsequently call ViewModel objects) - unit test
7) View Objects (Example: view classes, which subsequently call ListOfViewModelsUsingRealizedMethodsForView object) - integration test

Result:
   - ModelDataSource,ModelRepository,ModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed,NamedView - integration test
   - Model,ModelViewModel (Chapter: Start/End Custom Methods Use Only To ListOfViewModelForMainView),ListOfViewModelForNamedView(Chapter: Start/End Custom Methods) - unit test

How certain objects are tested?
In order:
1) Model Objects,ModelDataSource Objects,ModelRepository Objects - Testing method and into the expected result only the result of the method
2) ModelViewModel Objects,ModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed Objects,ListOfViewModelForNamedView Objects - Testing method and to the expected result. Method result, and comparison of object states
3) NamedView Objects - as always

## Note

About ModelViewModelUsingAbstractMethodsCertainTypesNamelyMethodsNamed Object: if many methods from the view model are used, then they are not inserted into 1 method. This is done to improve the readability of the code.

## License

[Apache License 2.0](LICENSE)
