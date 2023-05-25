import 'package:flutter/material.dart';
import 'package:flutter_spotify_africa_assessment/colors.dart';

//TODO: complete this page - you may choose to change it to a stateful widget if necessary
class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        "https://i.scdn.co/image/ab67706f000000039a25748cbbef9efb2c8b8339",
                        width: 263.52,
                        height: 263.2,
                      ),
                    ),
                  ),
                ),

                //: Image.network(listResponse![0]['url'].toString(),
                // width: 160, height: 150),
                const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
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
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Align(
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
          ),

          Container(
              height: 32,
              margin: const EdgeInsets.only(top: 24),
              width: 195,
              padding: const EdgeInsets.only(right: 15),
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
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
            padding: EdgeInsets.only(left: 24, right: 24, top: 24),
          ),

          //divider
          SizedBox(
            height: 4,
            width: 326,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
                gradient: LinearGradient(colors: [
                  AppColors.blue,
                  AppColors.cyan,
                  AppColors.green,
                ]),
              ),
            ),
          ),

          ///////////////
          ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) => const ListTile(
              title: Text(
                "Ayra Star",
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 12,
                  color: AppColors.whiteS,
                ),
              ),
              subtitle: Text(
                "Rush",
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 11,
                  color: AppColors.whiteS,
                ),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                "https://i.scdn.co/image/ab6761610000f178eb241673a5bd438b51ba124e",
              )),
              trailing: Text("3:22"),
            ),
          ),

          ////////////
          Container(
              height: 32,
              margin: const EdgeInsets.only(top: 24),
              width: 195,
              padding: const EdgeInsets.only(right: 15),
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    12,
                  ),
                  bottomRight: Radius.circular(
                    12,
                  ),
                ),
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Featured Artists",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 11,
                    color: AppColors.whiteS,
                  ),
                ),
              )),

          ////////
          ///
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 24),
            width: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(32.0),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        "https://i.scdn.co/image/ab6761610000f178eb241673a5bd438b51ba124e",
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),

                //: Image.network(listResponse![0]['url'].toString(),
                // width: 160, height: 150),
                const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "dvsn",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 12,
                        color: AppColors.whiteS,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
