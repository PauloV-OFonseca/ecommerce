// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginController extends GetxController {
  MaskTextInputFormatter phoneController = MaskTextInputFormatter(mask: "(00) 00000-0000");

  @override
  onInit() {
    super.onInit();
  }
}
