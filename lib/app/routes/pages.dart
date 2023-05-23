import 'package:get/get.dart';
import 'package:pokedex/app/bindings/home_binding.dart';
import 'package:pokedex/app/ui/pages/details/details_page.dart';
import 'package:pokedex/app/ui/pages/home_page/home_page.dart';

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
      binding: HomeBinding(),
    )
  ];
}
