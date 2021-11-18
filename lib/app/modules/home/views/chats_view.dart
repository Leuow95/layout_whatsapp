import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chats_controller.dart';

class ChatsView extends GetView<ChatsController> {
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
            title: Text('WHATSAPP'),
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
              Conversas(),
              Conversas(),
              Conversas(),
              Container(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}

class Conversas extends StatelessWidget {
  const Conversas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/ba/e1/ee/bae1ee1a36e65ebcfc371cb880c4d2d1.jpg'),
            ),
            title: Text('Russell Wilson $index'),
          );
        });
  }
}
