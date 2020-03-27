import 'package:flutter/material.dart';
import 'package:umusic_player/widgets/TextHeading.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffE0E0E0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Search"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
          TextHeading("Top Albums"),
        ],
      ),
    );
  }
}
