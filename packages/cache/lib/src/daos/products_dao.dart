import 'package:cache/src/custom_queries/products.dart';
import 'package:cache/src/database.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:models/src/products/products_model.dart';

part 'products_dao.g.dart';

@DriftAccessor(tables: [
  ProductsDataModel,
])
@lazySingleton
class ProductsDao extends DatabaseAccessor<AppDb> with _$ProductsDaoMixin {
  ProductsDao(AppDb db) : super(db);

  //
  // Future<void> insertProduct(ProductsModel item) async {
  //   return into(productsDataModel).insert(item.toInsertProducts);
  // }
}

extension on ProductsModel {
  ProductsDataModelData toInsertProducts() {
    return ProductsDataModelData(
        id: id,
        name: name,
        description: description,
        productImage: productImage,
        category: category,
        cost: cost);
  }
}
