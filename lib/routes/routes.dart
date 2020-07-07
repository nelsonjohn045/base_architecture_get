import 'package:get/get.dart';

import 'package:base_design/bindings.dart';
import 'package:base_design/ui/pages/home/home_page.dart';

const String routeRoot = '/';
mixin AppRoutes {
  final List<GetPage> generateRoutes = [
    GetPage(
        name: routeRoot, page: () => const HomePage(), binding: HomeBindings())
  ];
}
