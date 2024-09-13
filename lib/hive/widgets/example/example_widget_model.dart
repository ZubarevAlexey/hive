import 'package:hive_flutter/hive_flutter.dart';

part 'example_widget_model.g.dart';

//flutter packages pub run build_runner build
class ExampleWidgetModel {
  ExampleWidgetModel() {
    Hive.initFlutter();
  }

  void doSome() async {
    // const secureStorage = const FlutterSecureStorage();
    // final containsEncryptKey = await secureStorage.containsKey(key: 'key');
    // if (!containsEncryptKey) {
    //   final key = Hive.generateSecureKey();
    //   await secureStorage.write(key: 'key', value: base64UrlEncode(key));
    // }
    // final key = await secureStorage.read(key: 'key');
    //
    // final encryptionKey = base64Url.decode(key!);
    // var encryptedBox = await Hive.openBox<String>('vaultBox',
    //     encryptionCipher: HiveAesCipher(encryptionKey));
    // encryptedBox.put('secret', 'Hive is cool');
    // print(encryptedBox.get('secret'));

    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(UserAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(PetAdapter());
    }

    var box = await Hive.openBox<User>('testbox');
    var petBox = await Hive.openBox<Pet>('petBox');
    final pet = Pet('pushok');
    final pet1 = Pet('murzik');
    petBox.add(pet);
    petBox.add(pet1);
    final pets = HiveList(petBox, objects: [pet, pet1]);
    final user = User(54, 'Ivan', 'Putin', pets);
    await box.put('user', user);
    print(box.values);

    //box.clear();
    // final name =  box.get('name') as String?;
    // print(name);
    //
    // box.put('age', 22);
    // final age = box.get('age') as int;
    // print(age);
    //
    // await  box.put('friends', ['Dave','Saimon','Sam']);
    //   final friends = box.get('friends') as dynamic;
    //   print(friends);
// final index  = await box.add(['Dava','Msk','Alexey']);
// final friends = box.get(index);
// print(friends);
//  await box.delete('name');
//     print(box.keys);
  }
}

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(2)
  String? surname;
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;
  @HiveField(3)
  HiveList<Pet>? pets;

  User(
    this.age,
    this.name,
    this.surname,
    this.pets,
  );

  @override
  String toString() {
    return 'User{name: $name age: $age surname:$surname,pets:$pets}';
  }
}

@HiveType(typeId: 1)
class Pet extends HiveObject {
  @HiveField(0)
  String name;

  Pet(this.name);

  @override
  String toString() {
    return 'Pet{name: $name }';
  }
}
