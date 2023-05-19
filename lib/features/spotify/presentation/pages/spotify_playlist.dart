import 'package:flutter/material.dart';
import 'package:flutter_spotify_africa_assessment/colors.dart';

//TODO: complete this page - you may choose to change it to a stateful widget if necessary
class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 187,
            margin: const EdgeInsets.only(top: 24),
            width: 163,
            decoration: const BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      "https://i.scdn.co/image/ab67706f000000039a25748cbbef9efb2c8b8339"),
                )

                //Text(listResponsePlaylis![1]['href'].toString()),

                //: Image.network(listResponse![0]['url'].toString(),
                // width: 160, height: 150),
                //const Text("Peppeh"),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => ListTile(
                    title: Text("playlist ${index + 1}"),
                  ))
        ],
      ),
    );
  }
}
