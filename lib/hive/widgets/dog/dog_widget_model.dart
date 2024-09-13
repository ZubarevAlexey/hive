import 'package:hive_flutter/hive_flutter.dart';

part 'dog_widget_model.g.dart';

class DogWidgetModel {
  DogWidgetModel() {
    Hive.initFlutter();
  }

  void gavgav() async {
    if (!Hive.isAdapterRegistered(7)) {
      Hive.registerAdapter(DogAdapter());
    }
    if (!Hive.isAdapterRegistered(8)) {
      Hive.registerAdapter(PuppyAdapter());
    }
    var dogBox = await Hive.openBox<Dog>('dogBox');
    var puppyBox = await Hive.openBox<Puppy>('puppyBox');
    var puppy1 = Puppy("bars");
    var puppy2 = Puppy("Jaba");
    puppyBox.add(puppy1);
    puppyBox.add(puppy2);
    final puppys = HiveList(puppyBox, objects: [puppy1, puppy2]);
    var dog = Dog("Sak", 6, puppys);
    await dogBox.add(dog);
    //await dogBox.add(dog);
    // dogBox.deleteAt(0);
    print(dogBox.values);
  }
}

@HiveType(typeId: 7)
class Dog extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;
  @HiveField(2)
  HiveList<Puppy>? puppys;

  Dog(this.name, this.age, this.puppys);

  @override
  String toString() {
    return 'Dog{name: $name, age: $age,puppy:$puppys}';
  }
}

@HiveType(typeId: 8)
class Puppy extends HiveObject {
  @HiveField(0)
  final String name;

  Puppy(this.name);

  @override
  String toString() {
    return 'Puppy{name: $name}';
  }
}
