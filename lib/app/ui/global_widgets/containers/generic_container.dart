import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/controllers/home_controller.dart';

class GenericContainer extends GetView<HomeController> {
  final Size size;
  const GenericContainer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
