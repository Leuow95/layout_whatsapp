import 'package:get/get.dart';

import 'package:layout_whatsapp/app/modules/home/bindings/home_binding.dart';
import 'package:layout_whatsapp/app/modules/home/views/chats_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => ChatsView(),
      binding: ChatsBinding(),
    ),
  ];
}
