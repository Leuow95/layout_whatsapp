import 'package:get/get.dart';
import 'package:layout_whatsapp/app/modules/camera/bindings/camera_binding.dart';
import 'package:layout_whatsapp/app/modules/camera/views/camera_view.dart';
import 'package:layout_whatsapp/app/modules/home/bindings/home_binding.dart';
import 'package:layout_whatsapp/app/modules/home/views/chats_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CHATS;

  static final routes = [
    GetPage(
      name: _Paths.CAMERA,
      page: () => CameraView(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: _Paths.CHATS,
      page: () => ChatsView(),
      binding: ChatsBinding(),
    ),
  ];
}
