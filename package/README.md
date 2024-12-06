<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/logo_lamm.png" alt="Logo LAMM"/>
</p>

--- 

## Getting Starting

- [Why Did I Create Software Architecture](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#why-did-i-create-software-architecture)
- [Example](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#example)
- [Template For LAMM](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#template-for-lamm)
- [Documentation](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#documentation)
- [Design Patterns](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#design-patterns)

## Why Did I Create Software Architecture

- Everything starts with a problem, and problems give rise to solutions or technologies.
- Let's start with the fact that modern architectures do not provide a clear explanation:
- - How classes, methods, and variables should be named ?
- - How many objects are needed to update data in the view ?
- - Where exactly the logic should be when a certain widget is selected in the view, and how this should be implemented ?
- - Also, how the logic should be written, and how the logic itself is written in the VM ? (I mean that after each if, a return should be specified, and if it's a loop, then continue or break depending on the situation, and this is also done in the VM, but with the addition that after each if a method is created to continue the chain of logic, thus making the code more readable, and the readability of the code is measured in a science like psychology, which studies how our brain perceives information. For example: Gestalt Theory).
- - Where and how constants should be stored to be structured and understandable ?
- - Through whom we need to share data between VMs ?

## Example

- [Small project](https://github.com/antonpichka/library_architecture_mvvm_modify/blob/main/package/example/lib/main.dart)

## Template For LAMM

- How should I create projects on this architecture? (Github Template)
- - [template_for_lamm](https://github.com/antonpichka/template_for_lamm)

## Documentation 

- But before reading the documentation, please read the entire example

### General Rules

- Forbidden words:
- - And
- - Or
- - Where
- - For
- - From
- - Parameter/Parameters
- Alternative to forbidden words:
- - W
- Exception to forbidden words in some situations (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png)):
- - ![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And
- Try/catch only at '[NamedUtility](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedUtility)','[NamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedService)','[ModelWrapperRepository](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelWrapperRepository)'

### Architectural Objects

- In 'Architectural Objects' we include only those classes that can be refactored or inherited
- Name - [Inheritance | Refactoring]:
- - [NamedUtility](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedUtility) - Refactoring
- - [NamedVM](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedVM) - Refactoring
- - [DataForNamed](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#dataForNamed) - Refactoring
- - [EnumDataForNamed](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#enumDataForNamed) - Refactoring
- - [ModelTTNamed[TTNamed]TTNamedTTIterator](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelttnamedttnamedttnamedttiterator) - Refactoring
- - [NamedException](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedException) - Inheritance
- - [NamedState](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedState) - Inheritance
- - [NamedStreamWState](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedStreamWState) - Inheritance
- - [Model](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#model) - Inheritance
- - [ListModel](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#listModel) - Inheritance
- - [NamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedService) - Inheritance
- - [ModelWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelWrapper) - Inheritance
- - [ListModelWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#listModelWrapper) - Inheritance
- - [ModelWrapperRepository](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelWrapperRepository) - Inheritance
- Necessary to understand which classes to inherit and which classes to refactor, because if we inherit everything, we will lose a lot of time making the bodies of all methods abstract (that is, encapsulating code in other methods, which we can override in descendant classes), and if we refactor everything, we will lose code quality, which will lead to errors in the program, so it is necessary to balance between inheritance and refactoring
<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/rao_w_iao.png" alt="RAO W IAO"/>
</p>

- RAO (Refactoring Architectural Objects):
- - Fast start. Sad end
- RAO & IAO (Refactoring Architectural Objects & Inheritance Architectural Objects):
- - A worthy beginning. A worthy continuation. A great end
- IAO (Inheritance Architectural Objects):
- - Long beginning. Long Continuation. Worthy end

#### NamedUtility

##### Knows about: NamedVM, DataForNamed, EnumDataForNamed, ModelTTNamed[TTNamed]TTNamedTTIterator, NamedException, NamedState, NamedStreamWState, Model, ListModel, NamedService, ModelWrapper, ListModelWrapper, ModelWrapperRepository, TempCacheProvider, ExceptionController, Result, ResultWithModelWrapper, ResultWithListModelsWrapper

##### Rules

- Class Types:
- - KeysNamedServiceUtility - a class that stores keys for a particular service:
- - - Variables names (constants):
- - - - NamedQQNamedFirst(QQNamedSecond):
- - - - - () - optional
- - - - - Named - some kind of class
- - - - - NamedFirst - variable of this class
- - - - - (QQNamedSecond) - if there is already one, then you can add a detailed description, or add it even if there is no such one
- - - - Example:
- - - - - iPAddressQQIpQQJsonipAPI
- - KeysNamedUtility - a class that stores keys for anything (depending on your abstract thinking):
- - - Variables names (constants):
- - - - Named(QQNamedFirst)(QQNamedSecond):
- - - - - () - optional
- - - - - Named - anything you like (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - - (QQNamedFirst) - anything you like (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - - (QQNamedSecond) - anything you like (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Example:
- - - - - DataWAntiDDosSystemVMQQGetExceptionInStringWNotEqualsWCodeAndInputCode
- - NamedUtility - it could be anything:
- - - TimerUtility, InsertUserUtility, etc...
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### NamedVM

##### Knows about: NamedUtility, DataForNamed, EnumDataForNamed, ModelTTNamed[TTNamed]TTNamedTTIterator, NamedException, NamedState, NamedStreamWState, Model, ListModel, ModelWrapper, ListModelWrapper, ModelWrapperRepository, TempCacheProvider, ExceptionController, Result, ResultWithModelWrapper, ResultWithListModelsWrapper

##### Rules

- A 'NamedVM' called from another 'NamedVM' will be named by its 'Named' as a prefix of 'NamedEENamedVM', and the directories will also be located::
- - UserVM
- - - UserEEListMovieVM
- - - - UserEEListMovieEEDetailsMovieVM
- - - - - UserEEListMoviesEEDetailsMovieEEActorsVM
- Private methods that are called in the callback:
- - This code: 'for', 'while', 'do while', should not be inside a method. It must be encapsulated in 'DataForNamed' or 'AlgorithmsUtility', or 'Model', 'ListModel'
- - Summary in the form of variables: | Example: | Explanation:
- - - Summary in the form of variables:
- - - - ${In which callback did this start ?}YY${What does this method do ?}
- - - Example:
- - - - onPressedYYAddTask
- - - - listenNamedTempCacheProviderYYImplementListenerUserTempCacheProvider
- - - Explanation:
- - - - The methods created in this way allow us to understand who created this method
- - - - Minimum and maximum one 'YY' - needed as a separator that helps to quickly understand what this method does
- Private methods that are invoked by other methods using if and return type 'void' (sometime 'string'):
- - This code: 'for', 'while', 'do while', should not be inside a method. It must be encapsulated in 'DataForNamed' or 'AlgorithmsUtility', or 'Model', 'ListModel'
- - Summary in the form of variables: | Example: | Explanation:
- - - Summary in the form of variables:
- - - - numberQQ${In what "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - - numberBranchNumberQQ${In what "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - - - numberBranchNumberBranchNumberQQ${In what "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - Example:
- - - - firstQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - firstBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - Explanation:
- - - - The methods created in this way allow you to write complex logic
- - - - Minimum and maximum two 'QQ' - needed as a separator that helps to quickly understand what this method does
- - - - 'if' create methods:
- - - - - firstQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - firstBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - firstBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchOneBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchOneBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - firstBranchTwoBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchTwoBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchTwoBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - firstBranchThreeBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchThreeBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchThreeBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - secondQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - secondBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - secondBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchOneBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchOneBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - secondBranchTwoBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchTwoBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchTwoBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - secondBranchThreeBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchThreeBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchThreeBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - thirdQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - thirdBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - thirdBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchOneBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchOneBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - thirdBranchTwoBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchTwoBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchTwoBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - thirdBranchThreeBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchThreeBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchThreeBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService

#### DataForNamed

##### Knows about: NamedUtility, EnumDataForNamed, ModelTTNamed[TTNamed]TTNamedTTIterator, NamedException, Model, ListModel, ExceptionController

##### Rules

- Under what conditions are methods created ?:
- - Void:
- - - When 2+ variables interact with each other
- - - When necessary to use loops: 'for', 'while', 'do while'
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### EnumDataForNamed

##### Knows about: -

#### ModelTTNamed[TTNamed]TTNamedTTIterator

##### Knows about: NamedUtility, Model

##### Rules

- ModelTTNamed[TTNamed]TTNamedTTIterator
- - [] - if available
- - First 'TT', this is a 'Where'
- - Second 'TT' this is a 'From'
- - Third 'TT' this is a 'Parameter/Parameters'
- - Fourth 'TT' it's just the end

#### NamedException

##### Knows about: NamedUtility

##### Rules

- Inherit the base class 'BaseException':
- - LocalException
- - NetworkException

#### NamedState

##### Knows about: NamedUtility, DataForNamed, NamedException

##### Rules

- Inherit the base class 'BaseNamedState':
- - DefaultState

#### NamedStreamWState

##### Knows about: NamedUtility, DataForNamed, NamedException

##### Rules

- Inherit the base class 'BaseNamedStreamWState':
- - DefaultStreamWState

#### Model
    
##### Knows about: NamedUtility

##### Rules

- If complex logic is needed, then inside a certain model we create model catalogs with the prefix of a certain model 'ModelRRNamed':
- - Matches:
- - - MatchesRRDebut
- - - MatchesRRMiddlegame
- - - MatchesRREndgame
- Inheritance classes:
- - Names of inherited classes:
- - - ModelNumber:
- - - - Model - The name of the model itself:
- - - - - User, Movie, etc...
- - - - Number: 
- - - - - First, Second, Third, etc...
- - Inheritance goes along one branch:
- - - User -> UserFirst -> UserSecond -> UserThird
- - When inheriting, we also inherit:
- - - ListModel
- - - ModelWrapper
- - - ListModelWrapper
- - - ModelWrapperRepository
- Under what conditions are methods created ?:
- - Void:
- - - When 2+ variables interact with each other
- - - When necessary to use loops: 'for', 'while', 'do while'
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - - getModel(WhereNamed)[FromNamed]
- - - - () - optional
- - - - [] - if available
- - - - getModel - when we return an object of our own class
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getModelWhereNamedFromOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - model(WhereNamed)[FromNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### ListModel

##### Knows about: NamedUtility, ModelTTNamed[TTNamed]TTNamedTTIterator, Model

##### Rules

- Inheritance classes:
- - Names of inherited classes:
- - - ListModelNumber:
- - - - ListModel - The name of the model itself:
- - - - - ListUser, ListMovie, etc...
- - - - Number: 
- - - - - First, Second, Third, etc...
- - Inheritance goes along one branch:
- - - ListUser -> ListUserFirst -> ListUserSecond -> ListUserThird
- - When inheriting, we also inherit:
- - - Model
- - - ModelWrapper
- - - ListModelWrapper
- - - ModelWrapperRepository
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### NamedService

##### Knows about: NamedUtility, NamedException

##### Rules

- Inheritance classes:
- - Names of inherited classes:
- - - NamedNamedTwo:
- - - - Named:
- - - - - Default, Timeout, etc...
- - - - NamedTwo:
- - - - - HttpClient, SharedPreferences, etc...
- - - NamedNamedTwoService:
- - - - Named:
- - - - - Default, Timeout, etc...
- - - - NamedTwoService:
- - - - - HttpClientService, SharedPreferencesService, etc...
- - Inheritance across different branches:
- - - BaseNamedHttpClient -> DefaultHttpClient
- - - BaseNamedHttpClient -> TimeoutHttpClient
- - - BaseNamedHttpClientService -> DefaultHttpClientService
- - - BaseNamedHttpClientService -> TimeoutHttpClientService
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### ModelWrapper

##### Knows about: NamedUtility, Model

##### Rules

- Inheritance classes:
- - Names of inherited classes:
- - - ModelWrapperNumber:
- - - - ModelWrapper:
- - - - - UserWrapper, MovieWrapper, etc...
- - - - Number:
- - - - - First, Second, Third, etc...
- - Inheritance goes along one branch:
- - - UserWrapper -> UserWrapperFirst -> UserWrapperSecond -> UserWrapperThird
- - When inheriting, we also inherit:
- - - Model
- - - ListModel
- - - ListModelWrapper
- - - ModelWrapperRepository

#### ListModelWrapper

##### Knows about: NamedUtility, Model, ListModel

##### Rules

- Inheritance classes:
- - Names of inherited classes:
- - - ListModelWrapperNumber:
- - - - ListModelWrapper:
- - - - - ListUserWrapper, ListMovieWrapper, etc...
- - - - Number:
- - - - - First, Second, Third, etc...
- - Inheritance goes along one branch:
- - - ListUserWrapper -> ListUserWrapperFirst -> ListUserWrapperSecond -> ListUserWrapperThird
- - When inheriting, we also inherit:
- - - Model
- - - ListModel
- - - ModelWrapper
- - - ModelWrapperRepository

#### ModelWrapperRepository

##### Knows about: NamedUtility, NamedException, NamedService, ModelWrapper, ListModelWrapper, Result, ResultWithModelWrapper, ResultWithListModelsWrapper

##### Rules

- Inheritance classes:
- - Names of inherited classes:
- - - ModelWrapperNumberRepository:
- - - - ModelWrapper:
- - - - - UserWrapper, MovieWrapper, etc...
- - - - Number:
- - - - - First, Second, Third, etc...
- - Inheritance goes along one branch:
- - - UserWrapperRepository -> UserWrapperFirstRepository -> UserWrapperSecondRepository -> UserWrapperThirdRepository
- - When inheriting, we also inherit:
- - - Model
- - - ListModel
- - - ModelWrapper
- - - ListModelWrapper
- Methods names:
- - operationModel(WhereNamed)[FromNamed]ParameterNamed:
- - - () - optional
- - - [] - if available
- - - operation -  insert, update, delete, set, init, get, etc...
- - - Model - name model
- - - (WhereNamed) - describe in as much detail as possible what this class does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - ParameterNamed - services and other parameters (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - Local variable names - operationModel(WhereNamed)[FromNamed]ParameterNamed

### Not Architectural Objects

- In 'Not Architectural Objects' we include only what is a class in the library with the final modifier:
- - [TempCacheService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#tempCacheService)
- - [IterationService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#iterationService)
- - [TempCacheProvider](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#tempCacheProvider)
- - [ExceptionController](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#exceptionController)
- - [Result](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#result)
- - [ResultWithModelWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#resultWithModelWrapper)
- - [ResultWithListModelsWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#resultWithListModelsWrapper)

#### TempCacheService

##### Knows about: NamedException

#### IterationService 

##### Knows about: -

#### TempCacheProvider

##### Knows about: TempCacheService, IterationService

#### ExceptionController

##### Knows about: NamedException

#### Result

##### Knows about: NamedException, ExceptionController

#### ResultWithModelWrapper

##### Knows about: NamedException, ModelWrapper, ExceptionController

#### ResultWithListModelsWrapper

##### Knows about: NamedException, ListModelWrapper, ExceptionController

### Diagrams

- The diagrams will show all architectural and non-architectural objects
- There will be two types of diagrams:
- - Where everything is shown
- - Where everything is shown except one architectural or non-architectural object
- What sections will be under each diagram where a certain architectural or non-architectural object will be missing ?:
- - What will happen to the software architecture if this '{architectural or non-architectural object}' is removed ?

#### Main

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm.png" alt="Diagram LAMM"/>
</p>

- [PDF](https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm.pdf)

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_explanation.png" alt="Diagram LAMM Explanation"/>
</p>

- Only architectural objects know about this square.
- The arrow that is attached to the square and points to the square means that he knows about this square. He can also know about those squares that the square the arrow points to knows about
- Not-architectural objects
- Architectural objects (Inheritance)
- Architectural objects (Refactoring)

#### Without 'NamedUtility'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_named_utility.png" alt="Diagram LAMM Without NamedUtility"/>
</p>

- [NamedUtility](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedutility)

##### What will happen to the software architecture if this 'NamedUtility' is removed ?

- Where should we store all the constants then, and what should we call them so that everyone understands it ? And not create constants randomly wherever we want, and call them as we want
- Other objects will be deprived of help. For example: Someone will need 'Timer', or will need to provide an encryption algorithm, or provide ready-made data (static data)

#### Without 'NamedVM'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_named_vm.png" alt="Diagram LAMM Without NamedVM"/>
</p>

- [NamedVM](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedvm)

##### What will happen to the software architecture if this 'NamedVM' is removed ?

- This is the basis of the basics (root), here the UI is written, and the logic that can change the UI, and the data in this UI

#### Without 'DataForNamed'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_data_for_named.png" alt="Diagram LAMM Without DataForNamed"/>
</p>

- [DataForNamed](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#datafornamed)

##### What will happen to the software architecture if this 'DataForNamed' is removed ?

- The purpose of 'DataForNamed' is to provide data to the UI and change this UI depending on conditions (The UI is in 'NamedVM'). Without 'DataForNamed' all global variables and methods would have to be moved to 'NamedVM', the problem would then arise that any global variables that were not part of 'DataForNamed' could be used in the UI.

#### Without 'EnumDataForNamed'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_enum_data_for_named.png" alt="Diagram LAMM Without EnumDataForNamed"/>
</p>

- [EnumDataForNamed](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#enumdatafornamed)

##### What will happen to the software architecture if this 'EnumDataForNamed' is removed ?

- We will not be able to provide an easy-to-read event in the UI (Which is in 'NamedVM'). Example: 'EnumDataForNamed.authorization' and 'user.uniqueId.isNotEmpty', where is it easier to understand when the user is authorized, on the left or on the right ?

#### Without 'ModelTTNamed[TTNamed]TTNamedTTIterator'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_model_tt_named_tt_named_tt_named_tt_iterator.png" alt="Diagram LAMM Without ModelTTNamed[TTNamed]TTNamedTTIterator"/>
</p>

- [ModelTTNamed[TTNamed]TTNamedTTIterator](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelttnamedttnamedttnamedttiterator)

##### What will happen to the software architecture if this 'ModelTTNamed[TTNamed]TTNamedTTIterator' is removed ?

- We won't be able to sort the list of models

#### Without 'NamedException'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_named_exception.png" alt="Diagram LAMM Without NamedException"/>
</p>

- [NamedException](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedexception)

##### What will happen to the software architecture if this 'NamedException' is removed ?

- We will not be able to receive detailed information about the exception in the console (In which class the exception occurred. What class is the exception. Who is to blame for this exception (Developer, device, user). Detailed message about the exception)
- We will not be able to check by the key that determines what exactly caused this exception (Server not responding, code 404, code 403, no internet, etc.)

#### Without 'NamedStreamWState || NamedState'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_named_stream_w_state_or_named_state.png" alt="Diagram LAMM Without NamedStreamWStateOrNamedState"/>
</p>

- [NamedState](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedstate)
- [NamedStreamWState](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedstreamwstate)

##### What will happen to the software architecture if this 'NamedStreamWState || NamedState' is removed ?

- We will remain without the 'Observer' pattern that updates the UI itself. This is how MVVM is implemented, I transferred it as a standard (We do not take into account 'NamedState', it was created to comply with the rule that 'NamedVM' should not know 'DataForNamed' directly, otherwise it would violate the template, and violating the template leads to a loss of simplicity)

#### Without 'Model'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_model.png" alt="Diagram LAMM Without Model"/>
</p>

- [Model](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#model)

##### What will happen to the software architecture if this 'Model' is removed ?

- This is in any application, and without it we will not be able to get structured data

#### Without 'ListModel'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_list_model.png" alt="Diagram LAMM Without ListModel"/>
</p>

- [ListModel](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#listmodel)

##### What will happen to the software architecture if this 'ListModel' is removed ?

- Without it, we will not be able to manage the list of models and call various sortings.

#### Without 'NamedService'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_named_service.png" alt="Diagram LAMM Without NamedService"/>
</p>

- [NamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedservice)

##### What will happen to the software architecture if this 'NamedService' is removed ?

- Without this object, we will need to create an instance of the service in 'ModelWrapperRepository' each time and refactor the service implementation to another if necessary, or duplicate methods with another implementation, which will lead to meaningless copycode. For example: HttpClient will be created each time it is called, and if it is necessary to change the implementation, then it is necessary to refactor a million lines of code, or inherit methods and override with a new implementation, and if another 'NamedVM' needs another implementation, then it will be necessary to duplicate methods

#### Without 'ModelWrapper'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_model_wrapper.png" alt="Diagram LAMM Without ModelWrapper"/>
</p>

- [ModelWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelwrapper)

##### What will happen to the software architecture if this 'ModelWrapper' is removed ?

- Without this object 'ModelWrapperRepository' will lose its simplicity, namely it will know about 'Model', 'ListModel', and will be able to use their methods, and these are already algorithms. The purpose of 'ModelWrapperRepository' is to take data from the network and cache, and then give it out, and adding algorithms will complicate this object, so such a solution was invented so that every developer in the world could understand 'ModelWrapperRepository', and he did not need to click on methods to understand the whole essence of the repository method

#### Without 'ListModelWrapper'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_list_model_wrapper.png" alt="Diagram LAMM Without ListModelWrapper"/>
</p>

- [ListModelWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#listmodelwrapper)

##### What will happen to the software architecture if this 'ListModelWrapper' is removed ?

- Same as without 'ModelWrapper'

#### Without 'ModelWrapperRepository'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_model_wrapper_repository.png" alt="Diagram LAMM Without ModelWrapperRepository"/>
</p>

- [ModelWrapperRepository](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#modelwrapperrepository)

##### What will happen to the software architecture if this 'ModelWrapperRepository' is removed ?

- Without it, we will have to take data from the network and cache, in 'NamedVM' itself
- We will not be able to reuse and inherit code, which will lead to meaningless copycode and refactoring

#### Without 'TempCacheService'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_temp_cache_service.png" alt="Diagram LAMM Without TempCacheService"/>
</p>

- [TempCacheService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#tempCacheService)

##### What will happen to the software architecture if this 'TempCacheService' is removed ?

- Without it, there will be no temporary data storage that lives until the end of the application, and exchanging data between 'NamedVM' will be problematic, if not impossible

#### Without 'IterationService'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_iteration_service.png" alt="Diagram LAMM Without IterationService"/>
</p>

- [IterationService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#iterationservice)

##### What will happen to the software architecture if this 'IterationService' is removed ?

- Without it, we won't be able to register unique listeners for the same 'TempCacheService' key. Why is this necessary? To turn off listeners and avoid memory leaks, because if we turn off by the 'TempCacheService' key, we will turn off all listeners that are in other 'NamedVM', and if we add 'IterationService', we will turn off only those listeners that are in a specific 'NamedVM' when the 'NamedVM' is closed

#### Without 'TempCacheProvider'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_temp_cache_provider.png" alt="Diagram LAMM Without TempCacheProvider"/>
</p>

- [TempCacheProvider](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#tempcacheprovider)

##### What will happen to the software architecture if this 'TempCacheProvider' is removed ?

- 'TempCacheProvider' is a combination of 'TempCacheService' and 'IterationService', in short, without 'TempCacheService' there will be no temporary storage with which you can share data between 'NamedVM', and without 'IterationService', you will not be able to turn off 'TempCacheService' listeners, which must be turned off when closing 'NamedVM', which will eventually lead to a memory leak

#### Without 'ExceptionController'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_exception_controller.png" alt="Diagram LAMM Without ExceptionController"/>
</p>

- [ExceptionController](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#exceptioncontroller)

##### What will happen to the software architecture if this 'ExceptionController' is removed ?

- Without it, there will be no wrapper for 'NamedException', and it will be necessary to manually write a null check each time to check if there is an exception
- Without it, there will be no wrapper for 'NamedException', and the developer will have access to the exception itself, which is pointless, because the exception key is available to us, and we can use it to determine what to show to the user

#### Without 'Result'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_result.png" alt="Diagram LAMM Without Result"/>
</p>

- [Result](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#result)

##### What will happen to the software architecture if this 'Result' is removed ?

- Without it, we can't get success or exception. It can combine both success and exception, where with the help of 'ExceptionController' we determine whether we have an exception or not

#### Without 'ResultWithModelWrapper'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_result_with_model_wrapper.png" alt="Diagram LAMM Without ResultWithModelWrapper"/>
</p>

- [ResultWithModelWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#resultwithmodelwrapper)

##### What will happen to the software architecture if this 'ResultWithModelWrapper' is removed ?

- Same as with 'Result', only in success the object is 'ModelWrapper'

#### Without 'ResultWithListModelsWrapper'

<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/diagram_lamm_without_result_with_list_models_wrapper.png" alt="Diagram LAMM Without ResultWithListModelsWrapper"/>
</p>

- [ResultWithListModelsWrapper](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#resultwithlistmodelswrapper)

##### What will happen to the software architecture if this 'ResultWithListModelsWrapper' is removed ?

- Same as with 'Result', only in success the object is 'ListModelWrapper'

## Design Patterns

- Design patterns used in 'LAMM' (--Design Patterns/---Classes):
- - Observer:
- - - BaseNamedStreamWState
- - - DefaultStreamWState
- - Similar to 'Pub/Sub':
- - - TempCacheService
- - - TempCacheProvider
- - Singleton:
- - - TempCacheService
- - - IterationService
- - Factory method:
- - - BaseModelTTNamed[TTNamed]TTNamedTTIterator
- - - BaseException
- - Prototype:
- - - BaseModel
- - - BaseListModel
- - Similar to 'Prototype':
- - - BaseModelWrapper
- - - BaseListModelWrapper
- - Similar to 'Adapter':
- - - ExceptionController