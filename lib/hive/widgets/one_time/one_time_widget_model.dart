import 'package:hive_flutter/hive_flutter.dart';

part 'one_time_widget_model.g.dart';

class OneTimeWidgetModel {
  OneTimeWidgetModel() {
    Hive.initFlutter();
  }

  void doSomeThings() async {
    if (!Hive.isAdapterRegistered(5)) {
      Hive.registerAdapter(UserInfoAdapter());
    }
    if (!Hive.isAdapterRegistered(6)) {
      Hive.registerAdapter(CompanyNewAdapter());
    }
    var userInfoBox = await Hive.openBox<UserInfo>('userInfoBox');
    var companyBox = await Hive.openBox<CompanyNew>('companyBox');
    var company = CompanyNew("Edit");
    await companyBox.add(company);
    final com = HiveList(companyBox, objects: [company]);
    final userIfo = UserInfo("Max", 22, com);
    await userInfoBox.add(userIfo);
    print(userInfoBox.values);
  }
}

@HiveType(typeId: 5)
class UserInfo extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;
  @HiveField(2)
  HiveList<CompanyNew>? company;

  UserInfo(this.name, this.age, this.company);

  @override
  String toString() {
    return 'UserInfo{name: $name, age: $age, company: $company}';
  }
}

@HiveType(typeId: 6)
class CompanyNew extends HiveObject {
  @HiveField(0)
  final String name;

  CompanyNew(this.name);

  @override
  String toString() {
    return 'Company{name: $name}';
  }
}
