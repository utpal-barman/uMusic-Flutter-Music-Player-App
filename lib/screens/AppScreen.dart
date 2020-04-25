import 'package:flutter/material.dart';
import 'package:umusic_player/fragments/HomeFragment.dart';
import 'package:umusic_player/fragments/LibraryFragment.dart';
import 'package:umusic_player/fragments/MusicFragment.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _currentIndex = 0;
  PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              children: <Widget>[
                HomeFragment(),
                MusicFragment(),
                LibraryFragment(),
              ],
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor.withOpacity(0.4),
                  Theme.of(context).primaryColor.withBlue(8),
                ]),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Avicii - No one"),
              subtitle: Text("Avicii"),
              trailing:
                  IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), title: Text("Musics")),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), title: Text("Library")),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          this._controller.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
      ),
    );
  }
}
