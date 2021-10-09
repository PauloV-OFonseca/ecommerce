import 'package:ecommerce/app/data/stores/shopping_cart_store.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/components/default_alert.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class ShoppingCartController extends GetxController {
  final store = Get.find<ShoppingCartStore>();

  shoppingToPDF() async {
    final PdfDocument document = PdfDocument();
    String receipt = "Comprovante:\n\n\n";
    double totalPrice = 0;

    store.shoppingCartModel.item.forEach((element) {
      double subPrice = element.fruitItem.price * element.quantity.value;
      totalPrice += subPrice;
      receipt = receipt +
          "Código: ${element.fruitItem.id} -- ${element.fruitItem.name} -- Quantidade: ${element.quantity} un. -- Subpreço: R\$ $subPrice\n\n";
    });

    receipt = receipt +
        "\n\n Preço Total: R\$ ${totalPrice.toStringAsFixed(2).replaceAll(".", ",")}";

    final PdfPage page = document.pages.add();

    final PdfLayoutResult layoutResult = PdfTextElement(
            text: receipt,
            font: PdfStandardFont(PdfFontFamily.helvetica, 12),
            brush: PdfSolidBrush(PdfColor(0, 0, 0)))
        .draw(
            page: page,
            bounds: Rect.fromLTWH(
                0, 0, page.getClientSize().width, page.getClientSize().height),
            format: PdfLayoutFormat(layoutType: PdfLayoutType.paginate))!;

    page.graphics.drawLine(
        PdfPen(PdfColor(255, 0, 0)),
        Offset(0, layoutResult.bounds.bottom + 10),
        Offset(page.getClientSize().width, layoutResult.bounds.bottom + 10));

    final output = (await getExternalStorageDirectory())?.path;
    final file = File("$output/comprovante.pdf");
    await file.writeAsBytes(document.save());
  }

  navigateToHome(context) async {
    final path = (await getExternalStorageDirectory())?.path;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return DefaultAlert(
          title: "Compra finalizada",
          content:
              "O comprovante da compra foi enviado para seu diretório: $path",
        );
      },
    );
    Get.offNamedUntil(Routes.HOME, (route) => false);
  }
}
