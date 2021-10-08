import 'package:ecommerce/app/modules/home/modules/fruit_store/models/item_store_model.dart';
import 'package:ecommerce/app/shared/mocks/fruit_store_mock.dart';

class FruitStoreRepository {
  List<ItemStoreModel> getFruitItems() => FruitStoreMock().getFruits();
}
