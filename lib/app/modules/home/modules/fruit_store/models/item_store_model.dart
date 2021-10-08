import 'dart:convert';

ItemStoreModel itemStoreModelFromJson(String str) => ItemStoreModel.fromJson(json.decode(str));

String itemStoreModelToJson(ItemStoreModel data) => json.encode(data.toJson());

class ItemStoreModel {
    ItemStoreModel({
        required this.id,
        required this.name,
        required this.price,
        required this.photo,
    });

    String id;
    String name;
    double price;
    String photo;

    factory ItemStoreModel.fromJson(Map<String, dynamic> json) => ItemStoreModel(
        id: json["id"],
        name: json["name"],
        price: json["price"].toDouble(),
        photo: json["photo"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "photo": photo,
    };
}
