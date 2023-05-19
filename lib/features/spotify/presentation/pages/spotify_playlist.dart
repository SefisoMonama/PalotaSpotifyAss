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
            height: 335.23,
            margin: const EdgeInsets.only(top: 24),
            width: 294,
            decoration: const BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      "https://i.scdn.co/image/ab67706f000000039a25748cbbef9efb2c8b8339",
                      width: 263.52,
                      height: 263.2,
                    ),
                  ),
                ),

                //: Image.network(listResponse![0]['url'].toString(),
                // width: 160, height: 150),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Afro Basement",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 22,
                      color: AppColors.whiteS,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Align(
            //alignment: Alignment.centerLeft,
            child: Text(
              "The best in Afro Bashment, Afro Swing and all that good stuff. Cover: Davido",
              //textAlign: TextAlign.left,
              style: TextStyle(
                letterSpacing: 0.5,
                fontFamily: 'RobotoMono',
                fontSize: 12,
                color: AppColors.whiteS,
              ),
            ),
          ),
          Container(
              height: 32,
              margin: const EdgeInsets.only(top: 24),
              width: 195,
              padding: const EdgeInsets.only(right: 15),
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "286,850 Followers",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 11,
                    color: AppColors.whiteS,
                  ),
                ),
              )),
          const Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Divider(
              color: AppColors.green,
              thickness: 4,
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
