import 'package:ecommerce/app/modules/home/modules/fruit_store/models/item_store_model.dart';

class FruitStoreMock {
  List<ItemStoreModel> getFruits() {
    return [
      ItemStoreModel(
        id: "0129212",
        name: "Maçã",
        price: 0.89,
        photo:
            "https://cdn-icons-png.flaticon.com/512/812/812900.png",
      ),
      ItemStoreModel(
        id: "1212333",
        name: "Pêra",
        price: 2.99,
        photo:
            "https://cdn-icons-png.flaticon.com/512/415/415767.png",
      ),
      ItemStoreModel(
        id: "2359293",
        name: "Banana",
        price: 0.72,
        photo:
            "https://cdn-icons-png.flaticon.com/512/714/714197.png",
      ),
      ItemStoreModel(
        id: "3022118",
        name: "Abacaxi",
        price: 3.98,
        photo:
            "https://cdn.icon-icons.com/icons2/1493/PNG/512/pineapple_102840.png",
      ),
      ItemStoreModel(
        id: "44562782",
        name: "Manga",
        price: 1.49,
        photo:
            "https://as1.ftcdn.net/v2/jpg/01/80/31/64/500_F_180316446_bv4ay6SpQZwF6ivoWP7nIoCQwH7aHBTi.jpg",
      ),
    ];
  }
}
