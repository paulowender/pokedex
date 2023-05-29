import 'package:get/get.dart';
import 'package:pokedex/app/controllers/main_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}
