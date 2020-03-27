import 'package:flutter/material.dart';
import 'package:umusic_player/widgets/TextHeading.dart';

class LibraryFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextHeading("Top List"),
        ],
      ),
    );
  }
}
