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

In the first five examples (<a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_counter">Counter</a>,<a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_infinite_list">Infinite List</a>,<a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_firebase_login">Firebase Login</a>,<a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_github_search">Github Search</a>,<a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_weather">Weather</a>), the file and directory names are all uppercase, but this is not correct, as there are filesystems that are case sensitive, and therefore it is necessary to create .dart files only with lowercase

Applications <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_architecture_mvvm_modify_todo">Todo</a>, program files and directories are written in lowercase, and is also the main example because, the documentation is written based on this example

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
               <img src="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/assets/todo.gif" width="200"/>
            </td>
        </tr>
    </table>
</div>

- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_counter">Counter</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_infinite_list">Infinite List</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_firebase_login">Firebase Login</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_github_search">Github Search</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_weather">Weather</a>
- <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_architecture_mvvm_modify_todo">Todo</a>

## Documentation
Documentation based on the Todo app example <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_architecture_mvvm_modify_todo">Todo</a>

### Architecture Components

- #### ModelQThereIsStateViewModel

The class that provides the state of the model and the stream can be called IStreamModel, through the as modifier to refer to your class
```dart
class NoteQThereIsStateViewModel<T extends Note,Y extends ListNote<T>> 
        extends BaseModelQThereIsStateViewModel<T,Y>
{
  NoteQThereIsStateViewModel(super.iInitializedStreamModel);

  T? get getNote {
    return getModel;
  }

  Y? get getListNote {
    return getListModel;
  }

  Y? get getListNoteUsingCloneListNoteForSuccess {
    return getListModel?.cloneListNoteForSuccess() as Y?;
  }

  set setNote(T note) {
    setModel = note;
  }

  set setListNoteUsingCloneListNoteForSuccess(Y listNote) {
    setListModel = listNote.cloneListNoteForSuccess() as Y?;
  }
}
```  

- ##### IInitializedStreamModel

```dart
///  This class is designed to initialize "StreamModel" and if you need to change the implementation of "StreamModel"
///  you can write another class with this initializer, and later change it in the "ModelQNamedServiceViewModel"
///  component in the constructor to another class
class InitializedStreamNote
    implements IInitializedStreamModel<Note,ListNote>
{
  @override
  IStreamModel<Note,ListNote>? initializedStreamModel() {
    return RXStreamModel<Note,ListNote>(Note.getNoteForSuccess,ListNote.getListNoteForSuccess);
  }
}
```

- ##### IStreamModel

```dart
/// This class provides access to the model and stream, and resides in the "ModelQThereIsStateModel" class.
/// This class must be implemented, and in the implemented class,
/// the model and stream controllers must be a field and change state if necessary
class RXStreamModel<T extends BaseModel,Y extends BaseListModel<T>>
    implements IStreamModel<T,Y>
{
  final StreamController<T>? _streamControllerForModel;
  final StreamController<Y>? _streamControllerForListModel;
  T? _model;
  Y? _listModel;
  StreamSubscription<T>? _streamSubscriptionForModel;
  StreamSubscription<Y>? _streamSubscriptionForListModel;

  RXStreamModel(this._model,this._listModel)
      : _streamControllerForModel = BehaviorSubject<T>.seeded(_model!),
        _streamControllerForListModel = BehaviorSubject<Y>.seeded(_listModel!);

  @override
  void dispose() {
    _streamSubscriptionForModel?.cancel();
    _streamSubscriptionForListModel?.cancel();
    if(!_streamControllerForModel!.isClosed) {
      _streamControllerForModel?.close();
    }
    if(!_streamControllerForListModel!.isClosed) {
      _streamControllerForListModel?.close();
    }
  }

  @override
  Stream<T?> get getStreamModel => _streamControllerForModel!.stream;

  @override
  Stream<Y?> get getStreamListModel => _streamControllerForListModel!.stream;

  @override
  T? get getModel => _model;

  @override
  Y? get getListModel => _listModel;

  @override
  set setModel(T? model) {
    _model = model;
  }

  @override
  set setListModel(Y? listModel) {
    _listModel = listModel;
  }

  @override
  void notifyStreamModel() {
    if(!_streamControllerForModel!.hasListener) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForModel!.isClosed) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForModel
        ?.sink
        .add(_model!);
  }

  @override
  void notifyStreamListModel() {
    if(!_streamControllerForListModel!.hasListener) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForListModel!.isClosed) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForListModel
        ?.sink
        .add(_listModel!);
  }

  void listensStreamModel(
      Function(T event) callback)
  {
    _streamSubscriptionForModel = _streamControllerForModel
        !.stream
        .listen((event) {
          callback(event);
        });
  }

  void listensStreamListModel(
      Function(Y event) callback)
  {
    _streamSubscriptionForListModel = _streamControllerForListModel
        !.stream
        .listen((event) {
          callback(event);
        });
  }

  void resumeStreamSubscriptionForModel() {
    if(!_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.resume();
  }

  void resumeStreamSubscriptionForListModel() {
    if(!_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.resume();
  }

  void pauseStreamSubscriptionForModel() {
    if(_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.pause();
  }

  void pauseStreamSubscriptionForListModel() {
    if(_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.pause();
  }
}
```

- #### ModelQNamedServiceViewModel

NoteQSqfliteServiceViewModelUsingGetListNP:
```dart
/// This class is necessary for accessing the database,
/// the network (DataSource) and also before accessing the database, the network,
/// check the data and calculate if necessary in (FBDS),
/// also if there is a Stream in the Service,
/// it can pass it for control to the "ModelQThereIsStateViewModel" class if it is necessary
class NoteQSqfliteServiceViewModelUsingGetListNP<T extends Note,Y extends ListNote<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements GetListModelFromNamedServiceNPDataSource<Y>
{
  @protected
  final sqfliteService = SqfliteService();

  Future<Y?> getListNoteFromSqfliteServiceNP() {
    return super.getListModelFromNamedServiceNP();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Y?> getListModelFromNamedServiceNPDS()
  async {
    try {
      final database = await sqfliteService.getDatabase;
      final listMap = await database
          ?.rawQuery('SELECT * FROM ${SqfliteService.constTableNote}');
      return getListNoteFromListMap(listMap);
    } catch(e) {
      return getListNoteFromBaseException(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Y? getListNoteFromListMap(List<Map<String,dynamic>>? listMap) {
    if(listMap?.isEmpty ?? true) {
      return ListNote.success(<Note>[]) as Y?;
    }
    final listNote = listMap
        ?.map((e) => Note.fromMapForSqflite(e))
        .toList();
    return ListNote.success(listNote) as Y?;
  }

  @protected
  Y? getListNoteFromBaseException(BaseException? baseException) {
    return ListNote.exception(baseException!) as Y?;
  }
}
```

NoteQSqfliteServiceViewModelUsingInsertParameterNote:
```dart
class NoteQSqfliteServiceViewModelUsingInsertParameterNote<T extends Note,Y extends ListNote<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements InsertModelToNamedServiceParameterNamedDataSource<int,T>
{
  @protected
  final sqfliteService = SqfliteService();

  Future<Result<int>?> insertNoteToSqfliteServiceParameterNoteUsingFBDS(T parameter) {
    return super.insertModelToNamedServiceParameterNamedUsingFBDS<int,T>(
        InsertNoteToSqfliteServiceParameterNoteFBDSUsingInsertParameterNote<T>(),
        parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<int>?> insertModelToNamedServiceParameterNamedDS(T? parameter)
  async {
    try {
      final database = await sqfliteService.getDatabase;
      final result = await database?.insert(
          SqfliteService.constTableNote,
          parameter!.toMapForSqflite(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      return Result<int>.success(result);
    } catch(e) {
      return Result<int>.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}
```

- ##### NamedService

```dart
class SqfliteService {
  static const constTableNote = "Note";
  static Database? _database;

  Future<Database?> get getDatabase async {
    if(_database != null) {
      return _database;
    }
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'todo.db');
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE $constTableNote ('
              'id INTEGER PRIMARY KEY, '
              '${Note.constParameterUuIdForSqflite} TEXT NOT NULL, '
              '${Note.constParameterNameForSqflite} TEXT NOT NULL, '
              '${Note.constParameterDescriptionForSqflite} TEXT NOT NULL, '
              '${Note.constParameterIsCompletedForSqflite} INTEGER NOT NULL)');
        });
    return _database;
  }
}
```

- ##### IModelQNamedServiceDataSource

GetListModelFromNamedServiceNPDataSource:
```dart
/// This class is necessary to access the database or the network,
/// as it is a DataSource, and such classes as "ModelQNamedServiceViewModel" implement "DataSource"
/// for the main purpose and minimize the code, since inside the "BaseModelQNamedServiceModel"
/// there are references to the "DataSource" classes, and manipulate DataSource and FBDS classes
abstract class GetListModelFromNamedServiceNPDataSource<T extends BaseListModel> {
  Future<T?> getListModelFromNamedServiceNPDS();
}
```

InsertModelToNamedServiceParameterNamedDataSource:
```dart
/// This class is necessary to access the database or the network,
/// as it is a DataSource, and such classes as "ModelQNamedServiceViewModel" implement "DataSource"
/// for the main purpose and minimize the code, since inside the "BaseModelQNamedServiceModel"
/// there are references to the "DataSource" classes, and manipulate DataSource and FBDS classes
abstract class InsertModelToNamedServiceParameterNamedDataSource<T extends Object,Y extends Object> {
  Future<Result<T>?> insertModelToNamedServiceParameterNamedDS(Y? parameter);
}
```

- ##### FBDS

```dart
/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 3 generic types:
/// 1 generic type returns the correct result and must match the returned generic data source.
/// 2 generic type, sends the main parameter, which will be passed to the data source, after processing in fbds.
/// 3 generic type, sends additional data for verification and calculation, they are optional, and null can be assigned there
/// An example of a class name in a real project: InsertMovieToSqfliteServiceParameterMovieFBDSUsingInsertParameterMovie
/// ParameterMovie - with a parameter for insert
/// Using - is specified because it is also specified in the ModelQNamedServiceViewModel file name, and this binds fbds to this object, by file name.
/// This is done so as not to get confused where and which fbds is used
class InsertNoteToSqfliteServiceParameterNoteFBDSUsingInsertParameterNote<T extends Note>
    extends InsertModelToNamedServiceParameterNamedFBDS<int,T,Object>
{
  static const constIsEmptyByTrimParameterName = "constIsEmptyByTrimParameterName";

  @override
  Result<int>? insertModelToNamedServiceParameterNamed(T? parameter, Object? parameterForFBDS) {
    if(parameter?.isEmptyByTrimParameterName() ?? true) {
      return Result<int>.exceptionForFBDS(LocalException.whereTheUserIsGuilty(this,constIsEmptyByTrimParameterName));
    }
    return Result<int>.successForFBDS();
  }
}
```

- #### NamedViewListViewModel

```dart
/// This class is required in order to call the "ModelQNamedServiceViewModel" and "ModelQThereIsStateViewModel" classes
class AddNoteViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _stringsQThereIsStateViewModelForTitle =
  StringsQThereIsStateViewModel(InitializedStreamStrings());
  final _stringsQThereIsStateViewModelForDescription =
  StringsQThereIsStateViewModel(InitializedStreamStrings());

  // ModelQNamedServiceViewModel
  final _noteQSqfliteServiceViewModelUsingInsertParameterNote =
  NoteQSqfliteServiceViewModelUsingInsertParameterNote();

  // NamedWidgetListViewModel
  late final NoteFabWidgetListViewModel noteFabWidgetListViewModel;
  late final TitleTextFormFieldWidgetListViewModel titleTextFormFieldWidgetListViewModel;
  late final DescriptionTextFormFieldWidgetListViewModel descriptionTextFormFieldWidgetListViewModel;

  AddNoteViewListViewModel() {
    noteFabWidgetListViewModel = NoteFabWidgetListViewModel(
        _stringsQThereIsStateViewModelForTitle,
        _stringsQThereIsStateViewModelForDescription,
        _noteQSqfliteServiceViewModelUsingInsertParameterNote);
    titleTextFormFieldWidgetListViewModel = TitleTextFormFieldWidgetListViewModel(
        _stringsQThereIsStateViewModelForTitle);
    descriptionTextFormFieldWidgetListViewModel = DescriptionTextFormFieldWidgetListViewModel(
        _stringsQThereIsStateViewModelForDescription);
  }

  @override
  void dispose() {
    _stringsQThereIsStateViewModelForTitle.dispose();
    _stringsQThereIsStateViewModelForDescription.dispose();
  }

  Future<void> notifyStreamStringsByStringsAndInGeneralZeroTask()
  async {
    await Future.delayed(const Duration(milliseconds: 100));
    _stringsQThereIsStateViewModelForTitle
        .notifyStreamStrings();
    _stringsQThereIsStateViewModelForDescription
        .notifyStreamStrings();
  }
}
```

- ##### NamedWidgetListViewModel

NoteFabWidgetListViewModel:
```dart
class NoteFabWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForTitle;
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForDescription;
  @protected
  final NoteQSqfliteServiceViewModelUsingInsertParameterNote noteQSqfliteServiceViewModelUsingInsertParameterNote;

  NoteFabWidgetListViewModel(
      this.stringsQThereIsStateViewModelForTitle,
      this.stringsQThereIsStateViewModelForDescription,
      this.noteQSqfliteServiceViewModelUsingInsertParameterNote);

  Future<void> insertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask(
      Function(String message) functionForException,
      Function() functionForSuccess)
  async {
    // 1
    final result = await noteQSqfliteServiceViewModelUsingInsertParameterNote
        .insertNoteToSqfliteServiceParameterNoteUsingFBDS(getNoteForInsertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask());
    if(result
        !.exceptionController
        .isNotEqualsNullParameterException())
    {
      functionForException(result
          .exceptionController
          .getMessageForViewParameterException ?? "");
      return;
    }
    functionForSuccess();
  }

  @protected
  Note getNoteForInsertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask() {
    return Note.success(
        stringsQThereIsStateViewModelForTitle.getStrings?.field,
        stringsQThereIsStateViewModelForDescription.getStrings?.field,
        false);
  }
}
```

TitleTextFormFieldWidgetListViewModel:
```dart
class TitleTextFormFieldWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForTitle;

  TitleTextFormFieldWidgetListViewModel(
      this.stringsQThereIsStateViewModelForTitle);

  Stream<Strings?>? get getStreamStrings {
    return stringsQThereIsStateViewModelForTitle.getStreamStrings;
  }

  void setFieldByStringsAndInGeneralZeroTask(String value) {
    stringsQThereIsStateViewModelForTitle
        .getStrings
        ?.field = value;
    stringsQThereIsStateViewModelForTitle
        .notifyStreamStrings();
  }
}
```

DescriptionTextFormFieldWidgetListViewModel:
```dart
class DescriptionTextFormFieldWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForDescription;

  DescriptionTextFormFieldWidgetListViewModel(
      this.stringsQThereIsStateViewModelForDescription);

  Stream<Strings?>? get getStreamStrings {
    return stringsQThereIsStateViewModelForDescription.getStreamStrings;
  }

  void setFieldByStringsAndInGeneralZeroTask(String value) {
    stringsQThereIsStateViewModelForDescription
        .getStrings
        ?.field = value;
    stringsQThereIsStateViewModelForDescription
        .notifyStreamStrings();
  }
}
```

- #### NamedView

```dart
class AddNoteView
    extends StatefulWidget
{
  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState
    extends State<AddNoteView> 
{
  final _lo = AddNoteViewListViewModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _lo.notifyStreamStringsByStringsAndInGeneralZeroTask();
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.editTodoAddAppBarTitle),
      ),
      floatingActionButton: NoteFabWidget(_lo.noteFabWidgetListViewModel),
      body: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TitleTextFormFieldWidget(_lo.titleTextFormFieldWidgetListViewModel),
                DescriptionTextFormFieldWidget(_lo.descriptionTextFormFieldWidgetListViewModel)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

- ##### NamedWidget

NoteFabWidget:
```dart
class NoteFabWidget
    extends StatelessWidget
{
  @protected
  final NoteFabWidgetListViewModel lo;

  const NoteFabWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final floatingActionButtonTheme = theme.floatingActionButtonTheme;
    final fabBackgroundColor = floatingActionButtonTheme.backgroundColor ??
        theme.colorScheme.secondary;
    return FloatingActionButton(
      tooltip: l10n.editTodoSaveButtonTooltip,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      backgroundColor:  fabBackgroundColor,
      onPressed: () => onPressed(context),
      child: buildChild(context)
    );
  }

  @protected
  void onPressed(BuildContext context) {
    lo.insertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask(
            (String message) => scaffoldFeatureControllerForException(context,message),
            () => Navigator.of(context).pop());
  }

  @protected
  Widget buildChild(BuildContext context) {
    return const Icon(Icons.check_rounded);
  }
}
```

TitleTextFormFieldWidget:
```dart
class TitleTextFormFieldWidget
    extends StatelessWidget
{
  @protected
  final TitleTextFormFieldWidgetListViewModel lo;

  const TitleTextFormFieldWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Strings?>(
        stream: lo.getStreamStrings,
        builder: (BuildContext context,AsyncSnapshot<Strings?> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Container();
          }
          final strings = asyncSnapshot.data;
          return TextFormField(
            initialValue: strings?.field,
            decoration: buildDecoration(context, strings),
            maxLength: maxLength(),
            inputFormatters: inputFormatters(),
            onChanged: (value) => onChanged(context,value));
        });
  }

  @protected
  InputDecoration buildDecoration(BuildContext context, Strings? strings) {
    final l10n = context.l10n;
    return InputDecoration(labelText: l10n.editTodoTitleLabel);
  }

  @protected
  int maxLength() {
    return 50;
  }

  @protected
  List<TextInputFormatter> inputFormatters() {
    return [
      LengthLimitingTextInputFormatter(50),
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]')),
    ];
  }

  @protected
  void onChanged(BuildContext context,String value) {
    lo.setFieldByStringsAndInGeneralZeroTask(value);
  }
}
```

DescriptionTextFormFieldWidget:
```dart
class DescriptionTextFormFieldWidget
    extends StatelessWidget
{
  @protected
  final DescriptionTextFormFieldWidgetListViewModel lo;

  const DescriptionTextFormFieldWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Strings?>(
        stream: lo.getStreamStrings,
        builder: (BuildContext context,AsyncSnapshot<Strings?> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Container();
          }
          final strings = asyncSnapshot.data;
          return TextFormField(
              initialValue: strings?.field,
              decoration: buildDecoration(context, strings),
              maxLength: maxLength(),
              maxLines: maxLines(),
              inputFormatters: inputFormatters(),
              onChanged: (value) => onChanged(context,value));
        });
  }

  @protected
  InputDecoration buildDecoration(BuildContext context, Strings? strings) {
    final l10n = context.l10n;
    return InputDecoration(labelText: l10n.editTodoDescriptionLabel);
  }

  @protected
  int maxLength() {
    return 300;
  }

  @protected
  int maxLines() {
    return 7;
  }

  @protected
  List<TextInputFormatter> inputFormatters() {
    return [
      LengthLimitingTextInputFormatter(300),
    ];
  }

  @protected
  void onChanged(BuildContext context,String value) {
    lo.setFieldByStringsAndInGeneralZeroTask(value);
  }
}
```

### Utility

- #### NamedException

This code is taken from another example, <a href="https://github.com/JacobOdd/library_architecture_mvvm_modify/blob/main/examples/library_arch_mvvm_modify_firebase_login">Firebase Login</a>
```dart
class SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException
    extends BaseException
{
  final String code;
  final String message;

  SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
      Object thisClass,
      this.code,
      this.message) : super(thisClass,SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException);

  factory SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(
      Object thisClass,
      String code)
  {
    switch(code) {
      case 'invalid-email':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Incorrect password, please try again.',
        );
      default:
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
            "unknown LogIn",
          "An unknown exception occurred."
        );
    }
  }

  factory SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(
      Object thisClass,
      String code)
  {
    switch (code) {
      case 'invalid-email':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Please enter a stronger password.',
        );
      default:
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
            thisClass,
            "unknown signUp",
            "An unknown exception occurred."
        );
    }
  }

  factory SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(
      Object thisClass,
      String code)
  {
    switch(code) {
      case 'account-exists-with-different-credential':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'The credential verification ID received is invalid.',
        );
      default:
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
            thisClass,
            "unknown google",
            "An unknown exception occurred."
        );
    }
  }

  @override
  String get getMessageForView {
    return message;
  }

  @override
  String get exceptionInStringForDebugPrintException {
    return "Code: $code | "
        "Message: $message";
  }
}
```

- #### NamedIterator

Iterator to sort the list of models
```dart
class NoteIteratorForSortedParameterIsCompletedFalse<T extends Note>
    extends BaseIterator<T>
{
  @override
  T get current {
    T note = listModel![0];
    int iteration = 0;
    if(note.isCompleted == false) {
      listModel!.removeAt(iteration);
      return note;
    }
    for(int i = 1; i < listModel!.length; i++) {
      if(listModel![i].isCompleted == false) {
        note = listModel![i];
        iteration = i;
        break;
      }
    }
    listModel!.removeAt(iteration);
    return note;
  }

  @override
  bool moveNext() {
    if(listModel!.isEmpty) {
      return false;
    }
    for(Note note in listModel!) {
      if(note.isCompleted == false) {
        return true;
      }
    }
    return false;
  }

}
```

- #### NamedStreamModel

RXStreamModel already described above, in paragraph ModelQThereIsStateViewModel\IStreamModel

- #### These files are not created by the programmer in his project (I will describe for clarification)

- ##### IDispose 

```dart
/// This class is necessary to release resources, and it is in such classes:
/// "BaseModelQThereIsStateViewModel", "BaseNamedViewListViewModel", "IStreamModel"
abstract class IDispose {
  void dispose();
}
```

- ##### ExceptionController

```dart
enum EnumWhatIsTheException {
  noException,
  localException,
  networkException,
  otherException
}

/// This class is needed to manage the exception and provide
/// the necessary information to the developer about the error.
class ExceptionController {
  final EnumWhatIsTheException? enumWhatIsTheException;
  final BaseException? _exception;

  ExceptionController.success()
      : enumWhatIsTheException = EnumWhatIsTheException.noException,
        _exception = null;

  ExceptionController.exception(this._exception)
      : enumWhatIsTheException = _exception is LocalException
      ? EnumWhatIsTheException.localException : _exception is NetworkException
      ? EnumWhatIsTheException.networkException : EnumWhatIsTheException.otherException;

  @nonVirtual
  String? get getMessageForViewParameterException {
    return _exception?.getMessageForView;
  }

  @nonVirtual
  bool isNotEqualsNullParameterException() {
    if(_exception == null) {
      return false;
    }
    return true;
  }
}
```

- ##### Result

```dart

/// This class is required to get success or exception
class Result<T extends Object> {
  final T? parameter;
  final ExceptionController exceptionController;

  Result.success(this.parameter)
      : exceptionController = ExceptionController.success();
  Result.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception),
        parameter = null;
  Result.successForFBDS()
      : exceptionController = ExceptionController.success(),
        parameter = null;
  Result.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception),
        parameter = null;
}

```
