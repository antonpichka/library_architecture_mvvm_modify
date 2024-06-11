<p align="center">
<img src="https://raw.githubusercontent.com/antonpichka/library_architecture_mvvm_modify/main/assets/logo_lamm.png" alt="Logo LAMM"/>
</p>

--- 

## Getting Starting

- [Example](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#example)
- [Template For LAMM](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#template-for-lamm)
- [Documentation](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#documentation)

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

- Private methods names (Only in callback methods):
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
- - - 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
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
- - - 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
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

#### OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService

- Inheritance classes:
- - Names of inherited classes:
- - - OperationEEModelNumber(EEWhereNamed)[EEFromNamed]EEParameterNamedService:
- - - - Number - 'First','Second','Third', etc...
- - - All other explanation is written in 'Class Names'
- - Inheritance goes along one branch:
- - - GetListEEUserEEWhereOnlyAuthorizedEEParameterHttpService -> GetListEEUserFirstEEWhereOnlyAuthorizedEEParameterHttpService -> GetListEEUserSecondEEWhereOnlyAuthorizedEEParameterHttpService -> GetListEEUserThirdEEWhereOnlyAuthorizedEEParameterHttpService
- - When inheriting, we also inherit:
- - - 'Model'
- - - 'ListModel'
- - - 'ModelWNamedWNamedWNamedIterator' if exists
- Class names: 
- - OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService:
- - - Minimum two 'EE'. Maximum four 'EE' - needed as a separator that helps to quickly understand what this class does
- - - () - optional
- - - [] - if available
- - - Operation -  insert, update, delete, set, init, etc...
- - - EEModel - name model
- - - (EEWhereNamed) - describe in as much detail as possible what this class does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [EEFromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - EEParameterNamedService - what service do you use (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - Global variable names - _operationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
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