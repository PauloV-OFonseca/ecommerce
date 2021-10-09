import 'dart:convert';

import 'package:ecommerce/app/modules/home/modules/fruit_store/models/item_store_model.dart';

ShoppingCartModel shoppingCartModelFromJson(String str) => ShoppingCartModel.fromJson(json.decode(str));

String shoppingCartModelToJson(ShoppingCartModel data) => json.encode(data.toJson());

class ShoppingCartModel {
    ShoppingCartModel({
        required this.item,
    });

    List<Item> item;

    factory ShoppingCartModel.fromJson(Map<String, dynamic> json) => ShoppingCartModel(
        item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "item": List<dynamic>.from(item.map((x) => x.toJson())),
    };
}

class Item {
    Item({
        required this.fruitItem,
        required this.quantity,
    });

    ItemStoreModel fruitItem;
    int quantity;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        fruitItem: ItemStoreModel.fromJson(json["fruitItem"]),
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "fruitItem": fruitItem.toJson(),
        "quantity": quantity,
    };
}
