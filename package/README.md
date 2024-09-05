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
- It is also necessary to understand which classes to inherit and which classes to refactor, because if we inherit everything, we will lose a lot of time making the bodies of all methods abstract (that is, encapsulating code in other methods, which we can override in descendant classes), and if we refactor everything, we will lose code quality, which will lead to errors in the program, so it is necessary to balance between inheritance and refactoring
<p align="center">
    <img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/roac_w_ioac.png" alt="ROAC W IOAC"/>
</p>

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

#### NamedUtility

##### Knows about: NamedVM, DataForNamed, EnumDataForNamed, ModelTTNamed[TTNamed]TTNamedTTIterator, NamedException, NamedState, NamedStreamWState, Model, ListModel, NamedService, ModelWrapper, ListModelWrapper, ModelWrapperRepository, TempCacheProvider, ExceptionController, Result, ResultWithModelWrapper, ResultWithListModelsWrapper

##### Rules

- KeysNamedServiceUtility - a class that stores keys for a particular service:
- - Variables names (constants):
- - - NamedQQNamedFirstQQ(NamedSecond):
- - - - () - optional
- - - - Named - some kind of class
- - - - NamedFirst - variable of this class
- - - - (NamedSecond) - if there is already one, then you can add a detailed description, or add it even if there is no such one
- - - Example:
- - - - iPAddressQQIpQQJsonipAPI
- KeysNamedUtility - a class that stores keys for anything (depending on your abstract thinking):
- - Variables names (constants):
- - - NamedQQ(NamedFirst)QQ(NamedSecond):
- - - - () - optional
- - - - Named - anything you like (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - (NamedFirst) - anything you like (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - - (NamedSecond) - anything you like (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png))
- - - Example:
- - - - DataWAntiDDosSystemVMQQGetExceptionInStringWNotEqualsWCodeAndInputCode
- NamedUtility - it could be anything:
- - TimerUtility, InsertUserUtility, etc...
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
- - - UserEEMoviesVM
- - - - UserEEMoviesEEActorsVM
- Methods names:
- - Private methods that are called in the callback:
- - - This code: 'for', 'while', 'do while', should not be inside a method. It must be encapsulated in 'DataForNamed' or 'AlgorithmsUtility', or 'Model', 'ListModel'
- - - Summary in the form of variables: | Example: | Explanation:
- - - - Summary in the form of variables:
- - - - - ${In which callback did this start ?}YY${What does this method do ?}
- - - - Example:
- - - - - onPressedYYAddTask
- - - - - listenNamedTempCacheProviderYYImplementListenerUserTempCacheProvider
- - - - Explanation:
- - - - - The methods created in this way allow us to understand who created this method
- - - - - Minimum and maximum one 'YY' - needed as a separator that helps to quickly understand what this method does
- - Private methods that are invoked by other methods using if and return type 'void' (sometime 'string'):
- - - This code: 'for', 'while', 'do while', should not be inside a method. It must be encapsulated in 'DataForNamed' or 'AlgorithmsUtility', or 'Model', 'ListModel'
- - - Summary in the form of variables: | Example: | Explanation:
- - - - Summary in the form of variables:
- - - - - numberQQ${In what "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - - - numberBranchNumberQQ${In what "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - - - - numberBranchNumberBranchNumberQQ${In what "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - Example:
- - - - - firstQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - Explanation:
- - - - - The methods created in this way allow you to write complex logic
- - - - - Minimum and maximum two 'QQ' - needed as a separator that helps to quickly understand what this method does
- - - - - 'if' create methods:
- - - - - - firstQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - firstBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - firstBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - firstBranchOneBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - firstBranchOneBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - firstBranchTwoBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - firstBranchTwoBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - firstBranchTwoBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - firstBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - firstBranchThreeBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - firstBranchThreeBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - firstBranchThreeBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - secondBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - secondBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - secondBranchOneBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - secondBranchOneBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - secondBranchTwoBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - secondBranchTwoBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - secondBranchTwoBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - secondBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - secondBranchThreeBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - secondBranchThreeBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - secondBranchThreeBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - thirdBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - thirdBranchOneBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - thirdBranchOneBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - thirdBranchOneBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - thirdBranchTwoBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - thirdBranchTwoBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - thirdBranchTwoBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - thirdBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - - - thirdBranchThreeBranchOneQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - thirdBranchThreeBranchTwoQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - - - thirdBranchThreeBranchThreeQQFirstRequestQQGetIPAddressWhereJsonipAPIParameterHttpClientService

#### DataForNamed

##### Knows about: NamedUtility, EnumDataForNamed, ModelTTNamed[TTNamed]TTNamedTTIterator, NamedException, Model, ListModel, ExceptionController

##### Rules

- Under what conditions are methods created ?:
- - Void:
- - - A variable is set or used in another variable
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
- - OperationModel(WhereNamed)[FromNamed]ParameterNamed:
- - - () - optional
- - - [] - if available
- - - Operation -  insert, update, delete, set, init, get, etc...
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

- The diagrams will show all architectural and non-architectural components
- Number of diagrams: 22  
- There will be two types of diagrams:
- - Where everything is shown
- - Where everything is shown except one architectural or non-architectural component. And under the diagram it will be written what will happen if this one architectural or non-architectural component is missing
- What sections will be under each diagram where a certain architectural or non-architectural component will be missing ?:
- - What will happen to the software architecture if this '{architectural or non-architectural component}' is removed ?
- - Comparison
- - Summary

------------------------------------> Coming Soon

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
- - - TempCacheProvider
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