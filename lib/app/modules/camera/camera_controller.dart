// import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:camera/camera.dart';

class CameraController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;
  // CameraController _cameraController;
  Future<void> _initializeControllerFuture;
// final CameraDescription camera;
  @override
  void onInit() {
    super.onInit();
    // _cameraController = CameraController(
    //   widget.camera,
    //   ResolutionPreset.medium,
    // );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
