import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPages extends StatelessWidget {
  final Map _gifData;

  GifPages(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:_gifData["title"],
      backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(_gifData["images"]["fixed_height"]["url"]);
            },
       ),
        ],
      ) ,
      backgroundColor:Colors.black,
      body:Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ) ,
    );
  }
}
