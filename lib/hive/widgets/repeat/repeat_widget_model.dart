import 'package:hive_flutter/hive_flutter.dart';

part 'repeat_widget_model.g.dart';

class RepeatWidgetModel {
  RepeatWidgetModel() {
    Hive.initFlutter();
  }

  void doSomeThing() async {
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(PersonAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(CompanyAdapter());
    }
    var box = await Hive.openBox<Person>("PersonBox");
    var companyBox = await Hive.openBox<Company>("companyBox");
    var company = Company("Max");
    companyBox.add(company);
    final com = HiveList(companyBox, objects: [company]);
    var user = Person("Alex", "Ivanov", 22, 10000, com);
    await box.add(user);
    print(box.values);
  }
}

@HiveType(typeId: 3)
class Person extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String surname;
  @HiveField(2)
  final int age;
  @HiveField(3)
  final int salary;
  @HiveField(4)
  HiveList<Company>? company;

  Person(this.name, this.surname, this.age, this.salary, this.company);

  @override
  String toString() {
    return 'Person{name: $name, surname: $surname, age: $age, salary: $salary, company: $company}';
  }
}

@HiveType(typeId: 4)
class Company extends HiveObject {
  @HiveField(0)
  final String name;

  Company(this.name);

  @override
  String toString() {
    return 'Company{name: $name}';
  }
}
