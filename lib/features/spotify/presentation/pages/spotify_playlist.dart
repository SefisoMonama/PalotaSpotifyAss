import 'package:flutter/material.dart';
import 'package:flutter_spotify_africa_assessment/colors.dart';

//TODO: complete this page - you may choose to change it to a stateful widget if necessary
class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.containerColor,
        child: Row(
          children: [
            // mapResponse == null
            //? const Text("Loading...")
            //: Image.network(mapResponse!['icons'].toString()),
            Image.network(
                "https://i.scdn.co/image/ab67706f00000003740df3771d19c09eebf4ed78"),

            //Text(listResponsePlaylis![1]['href'].toString()),

            //: Image.network(listResponse![0]['url'].toString(),
            // width: 160, height: 150),
            //const Text("Peppeh"),
          ],
        ));
  }
}
