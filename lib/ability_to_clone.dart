abstract class AbilityToClone<T> {
  ///
  ///   Using project_structure_example:
  ///
  ///   class PersonDomain extends BaseModelDomain {
  ///     String name;
  ///     int age;
  ///
  ///     Person({String uniqueId,this.name,this.age}) : super(uniqueId);
  ///
  ///     PersonDomain cloneObject() {
  ///        return PersonDomain(uniqueId: uniqueId, name: name, age: age);
  ///     }
  ///   }
  ///
  ///
  T cloneObject();
}