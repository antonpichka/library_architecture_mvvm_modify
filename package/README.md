<p align="center">
<img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/logo_lamm.png" alt="Logo LAMM"/>
</p>

--- 

## Getting Starting

- [Example](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#example)
- [Template For LAMM](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#template-for-lamm)
- [Documentation](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#documentation)
- [Documentation Explanation](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#documentation-explanation)

## Example

- [Small project](https://github.com/antonpichka/library_architecture_mvvm_modify/blob/main/package/example/lib/main.dart)

## Template For LAMM

- How should I create projects on this architecture? (Github Template)
- - [template_for_lamm](https://github.com/antonpichka/template_for_lamm)

## Documentation 

- In general, I will try to describe the architecture in detail (Modification of MVVM). But before reading the documentation, please read the entire example

### General Rules

- Forbidden words (![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png)):
- - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) And
- - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) Or
- - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) Where
- - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) For
- - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) From
- - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) Parameter/Parameters
- Alternative to forbidden words (![#008000](https://placehold.co/15x15/008000/008000.png)):
- - ![#008000](https://placehold.co/15x15/008000/008000.png) W
- Exception to forbidden words in some situations (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png)):
- - ![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And
- Try/catch only at '[NamedUtility](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedUtility)','[OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#operationeemodeleewherenamedeefromnamedeeparameternamedservice)'

### Architectural Objects

We create and write architectural objects in the order in which it will be faster and better for the developer to run all this code. Example: We wrote the design and basic setup in the 'NamedVM' class, and then we started writing 'DataForNamed' to add simple logic for the data loading simulator and displaying a list, and maybe add error, and only then we write 'Model', 'ListModel' to show the concretive data in the list that we need it, and at the end we write 'NamedService' and 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' to load real data (We take into account that we will return to these objects. Example: you write 'DataForNamed' and started writing a 'Model', and then returned to 'DataForNamed' to add this 'Model'.)

123456 [NamedUtility](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedUtility)
1) [NamedVM](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedVM)
2) [DataForNamed](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#dataForNamed)
3) [Model](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#model)
4) [ListModel](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#listModel)
5) [NamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedService)
6) [OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#operationeemodeleewherenamedeefromnamedeeparameternamedservice)

#### NamedUtility

- Type classes - 'KeysNamedServiceUtility', 'KeysNamedUtility', 'NamedUtility':
- - KeysNamedServiceUtility - a class where the keys of a specific service are stored, and the keys are distributed across models:
- - - Example - Model 'IPAddress', Key 'Ip', Code 'static const String iPAddressQQIp = "ip"':
- - - - QQ - needed as a separator that helps to quickly understand what this constant does
- - KeysNamedUtility - a class whose keys belong to other classes and are attached to methods and can be used to store errors and various successes, etc...:
- - - Example - Class 'DataForAntiDDosSystemView', Key 'GetExceptionInStringWhereNotEqualsParametersCodeAndInputCode', Code 'static const String dataForAntiDDosSystemViewQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode = "dataForAntiDDosSystemViewQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode"':
- - - - QQ - needed as a separator that helps to quickly understand what this constant does
- - NamedUtility - it could be anything:
- - - Example - TimerUtility,InsertUserUtility (To NamedService), etc...
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelOrPrimitiveTypeWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### NamedVM

- Private methods names, which are used in callback methods:
- - Summary in the form of variables: | Example:
- - - Summary in the form of variables:
- - - - numberQQ${In which "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - - numberBranchNumberQQ${In which "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - - - - numberBranchNumberBranchNumberQQ${In which "method" did this madness begin ?}QQ${What "method" started this madness ?}
- - - Example:  
- - - - firstQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - firstBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchOneBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - Explanation:
- - - Private methods created in this way allow you to write complex logic and readable code
- - - Minimum and maximum two 'QQ' - needed as a separator that helps to quickly understand what this method does
- - - 'if' create methods:
- - - - firstQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - firstBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - firstBranchOneBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchOneBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchOneBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - firstBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - firstBranchTwoBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchTwoBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchTwoBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - firstBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - firstBranchThreeBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchThreeBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - firstBranchThreeBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - secondQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - secondBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - secondBranchOneBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchOneBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchOneBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - secondBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - secondBranchTwoBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchTwoBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchTwoBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - secondBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - secondBranchThreeBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchThreeBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - secondBranchThreeBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - thirdQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - thirdBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - thirdBranchOneBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchOneBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchOneBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - thirdBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - thirdBranchTwoBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchTwoBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchTwoBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - thirdBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService:
- - - - - - thirdBranchThreeBranchOneQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchThreeBranchTwoQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService
- - - - - - thirdBranchThreeBranchThreeQQInitReleaseCallbackQQGetIPAddressWhereJsonipAPIParameterHttpClientService

#### DataForNamed

- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelOrPrimitiveTypeWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### Model

- Inheritance classes: 
- - Names of inherited classes:
- - - ModelNumber:
- - - - Model - The name of the model itself. Example: 'User', 'Movie', etc...
- - - - Number - 'First','Second','Third', etc...
- - Inheritance goes along one branch:
- - - User -> UserFirst -> UserSecond -> UserThird
- - When inheriting, we also inherit: 
- - - 'ListModel'
- - - 'ModelRepository'
- - - 'ModelWNamedWNamedWNamedIterator' if exists
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelOrPrimitiveTypeWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### ListModel

- Inheritance classes:
- - Names of inherited classes:
- - - ListModelNumber:
- - - - ListModel - The name of the model itself. Example - 'ListUser', 'ListMovie', etc...
- - - - Number - 'First','Second','Third', etc...
- - Inheritance goes along one branch:
- - - ListUser -> ListUserFirst -> ListUserSecond -> ListUserThird
- - When inheriting, we also inherit:
- - - 'Model'
- - - 'ModelRepository'
- - - 'ModelWNamedWNamedWNamedIterator' if exists
- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelOrPrimitiveTypeWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### NamedService

- Methods names:
- - Get:
- - - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - - () - optional
- - - - [] - if available
- - - - get - required word
- - - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- - Void:
- - - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - - () - optional
- - - - [] - if available
- - - - operation - insert, update, delete, set, init, etc...
- - - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelOrPrimitiveTypeWhereNamedFromOneParameterOne))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - Bool:
- - - isWhereNamed[FromNamed][ParameterNamed]:
- - - - [] - if available
- - - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - - Regarding duplicates - at the end add 'First', 'Second', etc...
- - - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### ModelRepository

- Inheritance classes:
- - Names of inherited classes:
- - - ModelNumberRepository:
- - - - Number - 'First','Second','Third', etc...
- - Inheritance goes along one branch:
- - - UserRepository -> UserFirstRepository -> UserSecondRepository -> UserThirdRepository
- - When inheriting, we also inherit:
- - - 'Model'
- - - 'ListModel'
- - - 'ModelWNamedWNamedWNamedIterator' if exists
- Methods names:
- - OperationModel(WhereNamed)[FromNamed]ParameterNamedService:
- - - () - optional
- - - [] - if available
- - - Operation -  insert, update, delete, set, init, etc...
- - - Model - name model
- - - (WhereNamed) - describe in as much detail as possible what this class does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - ParameterNamedService - what service do you use (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - Local variable names - operationModel(WhereNamed)[FromNamed]ParameterNamedService

## Documentation Explanation

- The explanation will be supported by “Psychology” (Facts) or “My theory of effective development” (Personal opinion)
- Information will be provided in the following template:
```
### Question ?:
- Psychology:
- - Brief information:
- - - {message}
- - Proof:
- - - {url}
```

OR

```
### Question ?:
- My theory of effective development:
- - Development speed:
- - - (+)||(-){message}
- - Development quality:
- - - (+)||(-){message}
- - Speed && Quality of development:
- - - (+)||(-){message}
```

### Why separators ?:

- Psychology:
- - Brief information:
- - - Separators help you understand faster
- - - In the simplest terms, gestalt theory is based on the idea that the human brain will attempt to simplify and organize complex images or designs that consist of many elements, by subconsciously arranging the parts into an organized system that creates a whole, rather than just a series of disparate elements.
- - Proof:
- - - https://en.wikipedia.org/wiki/Gestalt_psychology#Perceptual_organisation_forms

### Why are classes named this way and inherited only on one branch ?:

- My theory of effective development:
- - Development speed:
- - - (+) The name of the heirs is very simple, because we add 'First', 'Second', 'Third' at the end, and there is no need to think about the name of the class
- - - (+) It is easy to determine which class to inherit and use, because it is numbered
- - Development quality:
- - - (-) A simple class name is harmful, because when the programmer looks at the file name (which is the name of the class), he will not understand what exactly has been changed in the class
- - Speed && Quality of development:
- - - (+) Inheritance along one branch simplifies development, because if there is more than one branch, then confusion arises, especially if one of the branches has inheritance to other branches

### Why are "General Rules" written this way and why do we need "General Rules" ?:

- Psychology:
- - Brief information:
- - - Separators help you understand faster
- - - We replace the keywords with 'W', and thus these keywords are written in the name of the class, method, only once
- - - In the simplest terms, gestalt theory is based on the idea that the human brain will attempt to simplify and organize complex images or designs that consist of many elements, by subconsciously arranging the parts into an organized system that creates a whole, rather than just a series of disparate elements.
- - Proof:
- - - https://en.wikipedia.org/wiki/Gestalt_psychology#Perceptual_organisation_forms

### Why are private methods written this way, which are used in callback methods of NamedVM, and generate other private methods within themselves ?:

- My theory of effective development:
- - Development speed:
- - - (-) The methods are very long, because of this we spend more time than we would like
- - Speed && Quality of development:
- - - (+) Let me give you an example: we have the following banks: 'CreditBank', 'SonBank', 'QwBank', 'FsqBank', where one bank absorbs all subsequent banks in order, and you need to choose which bank name is more informative . There are 2 options: 1) 'CreditBank'. 2) 'CreditSonQwFsqBank'. Of the proposed options, the second option will be more informative: 'CreditSonQwFsqBank'. This name clearly indicates which banks were absorbed and in what order, which makes it more informative for human perception. That's why the methods are written this way.