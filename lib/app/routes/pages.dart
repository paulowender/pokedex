import 'package:get/get.dart';

import '../bindings/details_binding.dart';
import '../bindings/home_binding.dart';
import '../modules/details/page.dart';
import '../modules/home/page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const DetailsPage(),
      binding: DetailsBinding(),
    )
  ];
}
