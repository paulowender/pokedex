import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

/// GenericContainer
///
/// Generic container for all the containers in the app.
class GenericContainer extends GetView<MainController> {
  final Size size;
  const GenericContainer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
