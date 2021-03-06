import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
            title: Text(widget.title),
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
          body: ListView.separated(
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
              }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
            backgroundColor: Theme.of(context).accentColor,
          ) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}
