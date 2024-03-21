class Person {
  String _name;

  Person(this._name);

  set name(String newName) {
    _name = newName.toUpperCase();
  }
}

void main() {
  final person = Person('Bob');

  person.name = 'Alice';

  print(person._name);
}
