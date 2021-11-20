import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:layout_whatsapp/app/modules/home/widgets/chats_widget.dart';
import 'chats_controller.dart';
// import 'package:layout_whatsapp/app/modules/home/chats_binding.dart';

class ChatsView extends GetView<ChatsController> {
  // final _chatsController = Get.put(ChatsController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: 'CONVERSAS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CHAMADAS'),
            ],
          ),
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: TabBarView(
          children: [
            // CameraView(),
            // CameraView(),
            // CameraView(),
            // Chats(),
            // Chats(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.chat),
        //   backgroundColor: Color(0xff075E54),
        // ) // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
