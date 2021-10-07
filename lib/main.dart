import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
