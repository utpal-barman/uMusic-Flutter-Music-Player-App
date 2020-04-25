import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:umusic_player/widgets/TextHeading.dart';

class MusicFragment extends StatefulWidget {
  @override
  _MusicFragmentState createState() => _MusicFragmentState();
}

class _MusicFragmentState extends State<MusicFragment> {
  var _songs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextHeading("All Musics"),
        Expanded(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.play_arrow),
                ),
                title: Text("_songs[index].title"),
                subtitle: Text("Anthony Jonas"),
                trailing: Text("5:01"),
                onTap: null,
              );
            },
          ),
        )
      ],
    );
  }
}
