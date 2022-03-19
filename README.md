
## Usage

[Here is an example of a project 'RBKaros' on Github on the architecture branch](https://github.com/JacobOdd/RBKaros/tree/architecture)

## Testing Architecture

What exactly are we testing?
In order:
1) Model Objects (Example: model domain objects) - unit test
2) DataSource Objects (Example: model local database or model network database) - integration test
3) Repository Objects (Example: model repository, which subsequently call DataSource objects) - integration test
4) ViewModel Objects (Example: model view model, which subsequently call Repository object) - unit test
5) ModelViewModelUsingRealizedMethodsForNamedView Objects - integration test
6) ListOfViewModelsUsingRealizedMethodsForNamedView Objects (Example: list of view models using realized methods for named view, which subsequently call ViewModel objects) - unit test
7) View Objects (Example: view classes, which subsequently call ListOfViewModelsUsingRealizedMethodsForView object) - integration test

Result:
   - DataSource,Repository,ModelViewModelUsingRealizedMethodsForNamedView,View - integration test
   - Model,ViewModel (Chapter: Start/End Custom Methods),ListOfViewModelsUsingRealizedMethodsForNamedView(Chapter: Start/End Custom Methods) - unit test

How certain objects are tested?
In order:
1) Model Objects,DataSource Objects,Repository Objects - Testing method and into the expected result only the result of the method
2) ViewModel Objects,ModelViewModelUsingRealizedMethodsForNamedView Objects,ListOfViewModelsUsingRealizedMethodsForNamedView Objects
    - Testing method and to the expected result. Method result, and comparison of object states
3) View Objects - as always

## License

[Apache License 2.0](LICENSE)
    
