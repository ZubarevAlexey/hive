import 'package:hive_flutter/hive_flutter.dart';

part 'cat_widget_model.g.dart';

class CatWidgetModel {
  CatWidgetModel() {
    Hive.initFlutter();
  }
  void myau() async {
    if (!Hive.isAdapterRegistered(9)) {
      Hive.registerAdapter(CatAdapter());
    }
    if (!Hive.isAdapterRegistered(10)) {
      Hive.registerAdapter(KittensAdapter());
    }
    var catBox = await Hive.openBox<dynamic>('cat');
    var kittensBox = await Hive.openBox<Kittens>('kitten');
    var kitten1 = Kittens("Forbce");
    var kitten2 = Kittens("Luna");
    kittensBox.add(kitten1);
    kittensBox.add(kitten2);
    final kittens = HiveList(kittensBox, objects: [kitten1, kitten2]);
    var cat = Cat("Murka", 2, kittens);
    await catBox.add(cat);
    print(catBox.values);
  }
}

@HiveType(typeId: 9)
class Cat extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;
  @HiveField(2)
  HiveList<Kittens>? cats;

  Cat(
    this.name,
    this.age,
    this.cats,
  );

  @override
  String toString() {
    return 'Cat{name: $name, age: $age cats:$cats,}';
  }
}

@HiveType(typeId: 10)
class Kittens extends HiveObject {
  @HiveField(0)
  final String name;

  Kittens(this.name);

  @override
  String toString() {
    return 'Kittens{name: $name}';
  }
}
