import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/data/routes/app_pages.dart';

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
