import 'package:hive_flutter/hive_flutter.dart';

part 'charcoal_widget_model.g.dart';

class CharcoalWidgetModel {
  CharcoalWidgetModel() {
    Hive.initFlutter();
  }

  void buy() async {
    if (!Hive.isAdapterRegistered(13)) {
      Hive.registerAdapter(CharcoalBoxAdapter());
    }
    if (!Hive.isAdapterRegistered(14)) {
      Hive.registerAdapter(CharcoalItemAdapter());
    }

    var charcoalBox = await Hive.openBox<CharcoalBox>('charcoalBox');
    var charcoalItemBox = await Hive.openBox<CharcoalItem>('charcoalItemBox');
    var charcoalItem25 = CharcoalItem("Crown 25", 450);
    var charcoalItemMaxFlow = CharcoalItem("Crown Max Flow", 500);
    charcoalItemBox.add(charcoalItem25);
    charcoalItemBox.add(charcoalItemMaxFlow);
    var charcoals = HiveList(charcoalItemBox,
        objects: [charcoalItem25, charcoalItemMaxFlow]);
    final charcoalCube = CharcoalBox("CrownBox 20Kg", 25, charcoals);
    await charcoalBox.add(charcoalCube);
    print(charcoalBox.values);
  }
}

@HiveType(typeId: 13)
class CharcoalBox extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int size;
  @HiveField(2)
  HiveList<CharcoalItem> item;

  CharcoalBox(this.name, this.size, this.item);

  @override
  String toString() {
    return 'CharcoalBox{name: $name, size: $size,items:$item}';
  }
}

@HiveType(typeId: 14)
class CharcoalItem extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int price;

  CharcoalItem(
    this.name,
    this.price,
  );

  @override
  String toString() {
    return 'CharcoalItem{name: $name, price: $price}';
  }
}
