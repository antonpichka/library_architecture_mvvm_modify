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
- [Big project](https://github.com/antonpichka/topdbd)

## Template For LAMM

- How should I create projects on this architecture? (Github Template)
- - [template_for_lamm](https://github.com/antonpichka/template_for_lamm)

## Documentation 

- In general, I will try to describe the architecture in detail (Modification of MVVM)

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

In what order to create and write architectural objects?

1234567 [NamedUtility](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedUtility)
1) [NamedView](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedView)
2) [DataForNamed](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#dataForNamed)
3) [Model](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#model)
4) [ListModel](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#listModel)
5) [NamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedService)
6) [OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#operationeemodeleewherenamedeefromnamedeeparameternamedservice)
7) [NamedViewModel](https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#namedViewModel)

#### NamedUtility

- You can use the same rules as 'Model' or your own rules
- Type classes (KeysNamedServiceUtility, KeysNamedUtility, NamedUtility):
- - KeysNamedServiceUtility - a class where the keys of a specific service are stored, and the keys are distributed across models
- - - Example - Model 'IPAddress', Key 'Ip' (static const String iPAddressQQIp = "ip")
- - - - QQ - needed as a separator that helps to quickly understand what this constant does
- - KeysNamedUtility - a class whose keys belong to other classes and are attached to methods and can be used to store errors and various successes, etc.
- - - Example - Class 'DataForAntiDDosSystemView', Key 'GetExceptionInStringWhereNotEqualsParametersCodeAndInputCode' (static const String dataForAntiDDosSystemViewQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode = "dataForAntiDDosSystemViewQQGetExceptionInStringWhereNotEqualsParametersCodeAndInputCode")
- - - - QQ - needed as a separator that helps to quickly understand what this constant does
- - NamedUtility - it could be anything
- - - Example - TimerUtility,InsertUserUtility (To NamedService), etc...

#### NamedView

- The same rules as the 'Model'

#### DataForNamed

- The same rules as the 'Model'

#### Model

- Get:
- - get(Named)(WhereNamed)[FromNamed][ParameterNamed]:
- - - () - optional
- - - [] - if available 
- - - get - required word
- - - (Named) - we get primitive type or another model or briefly describe what we are taking
- - - (WhereNamed) - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - getNamedWhereNamedFromOneParametersTwo))
- - - Regarding duplicates - at the end add 'FIRST', 'SECOND', etc...
- - - Local variable name - named(WhereNamed)[FromNamed][ParameterNamed]
- Void:
- - operation[OtherModelOrPrimitiveType] (WhereNamed)[FromNamed][ParameterNamed]
- - - () - optional
- - - [] - if available 
- - - operation - insert, update, delete, set, init, etc...
- - - [OtherModelOrPrimitiveType] - if your class has a model list or primitive type list parameter. But if you specify a different model or primitive type in [FromNamed] then there is no point in specifying that. If you add the same "Model" to your "ListModel" then there is no point in specifying this
- - - (WhereNamed) -  describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - operationOtherModelOrPrimitiveTypeWhereNamedFromOneParameterOne))
- - - Regarding duplicates - at the end add 'FIRST', 'SECOND', etc...
- Bool:
- - isWhereNamed[FromNamed][ParameterNamed]:
- - - [] - if available
- - - isWhereNamed - describe in as much detail as possible what this method does (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [FromNamed] - if the method has parameters, then list (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - [ParameterNamed] - what global variables were used (![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) And - for iteration)
- - - Method name length - no more than 100 characters (if more than 100, then use numbers (Example - isWhereNamedFromOneParametersTwo))
- - - Regarding duplicates - at the end add 'FIRST', 'SECOND', etc...
- - - Local variable name - isWhereNamed[FromNamed][ParameterNamed]

#### ListModel

- The same rules as the 'Model'

#### NamedService

- The same rules as the 'Model'

#### OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService

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

#### NamedViewModel

- Global variable names - _namedViewModel
- How are private methods created in this class ?
- - numberQQ${InWhatMethod?}QQ${WhichMethodTriggersTheCreationOfAPrivateMethod?}
- - - How are private methods to private methods created in this class ? 
- - - - numberBranchNumberQQ${InWhatMethod?}QQ${WhichMethodTriggersTheCreationOfAPrivateMethod?}
- - - - - How are private methods to private methods to private methods created in this class ? 
- - - - - - numberBranchNumberBranchNumberQQ${InWhatMethod?}QQ${WhichMethodTriggersTheCreationOfAPrivateMethod?}
- - Example: 
- - - firstQQ${InWhatMethod?}QQ${WhichMethodTriggersTheCreationOfAPrivateMethod?}
- - - - firstBranchOneQQ${InWhatMethod?}QQ${WhichMethodTriggersTheCreationOfAPrivateMethod?}
- - - - - firstBranchOneBranchOneQQ${InWhatMethod?}QQ${WhichMethodTriggersTheCreationOfAPrivateMethod?}
- - Minimum and maximum two 'QQ' - needed as a separator that helps to quickly understand what this method does