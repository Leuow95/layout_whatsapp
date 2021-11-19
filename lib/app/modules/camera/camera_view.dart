import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'camera_controller.dart';

class CameraView extends GetView<CameraController> {
  final _cameraController = Get.put(CameraController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                _cameraController.getImage(ImageSource.camera);
              },
              icon: Icon(Icons.camera_alt),
            ),
          ],
        ),
      ),
    );
  }
}
