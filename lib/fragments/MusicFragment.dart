import 'package:flutter/material.dart';
import 'package:umusic_player/widgets/TextHeading.dart';

class MusicFragment extends StatelessWidget {
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
                title: Text("Sky blue is love"),
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
