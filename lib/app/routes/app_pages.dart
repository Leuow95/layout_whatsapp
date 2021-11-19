import 'package:get/get.dart';
import 'package:layout_whatsapp/app/modules/camera/camera_binding.dart';
import 'package:layout_whatsapp/app/modules/camera/camera_view.dart';
import 'package:layout_whatsapp/app/modules/home/chats_binding.dart';
import 'package:layout_whatsapp/app/modules/home/chats_view.dart';

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
