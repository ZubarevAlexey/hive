import 'package:hive_flutter/hive_flutter.dart';

part 'university_widget_model.g.dart';

class UniversityWidgetModel {
  UniversityWidgetModel() {
    Hive.initFlutter();
  }

  void some() async {
    if (!Hive.isAdapterRegistered(11)) {
      Hive.registerAdapter(UniversityAdapter());
    }
    if (!Hive.isAdapterRegistered(12)) {
      Hive.registerAdapter(StudentsAdapter());
    }
    var box1 = await Hive.openBox("univer");
    var box2 = await Hive.openBox("stud");
    var stud1 = Students("Gul", 1);
    var stud2 = Students("Yana", 2);
    var stud3 = Students("merim", 3);
    box2.add(stud1);
    box2.add(stud2);
    box2.add(stud3);
    final students = HiveList(box2, objects: [stud1, stud2, stud3]);
    var univer = University("Slavyan", "Gum", students);
    box1.add(univer);
    print(box1.values);
  }
}

@HiveType(typeId: 11)
class University extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String location;
  @HiveField(2)
  HiveList<Students>? students;

  University(
    this.name,
    this.location,
    this.students,
  );

  @override
  String toString() {
    return 'University{name: $name, location: $location,students:$students}';
  }
}

@HiveType(typeId: 12)
class Students extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int id;

  Students(this.name, this.id);

  @override
  String toString() {
    return 'Students{name: $name, id: $id}';
  }
}
