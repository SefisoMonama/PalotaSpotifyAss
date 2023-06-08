import 'package:flutter/material.dart';
import 'package:flutter_spotify_africa_assessment/colors.dart';

//TODO: complete this page - you may choose to change it to a stateful widget if necessary
class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //
            Center(
              child: Container(
                height: 335.23,
                margin: const EdgeInsets.only(top: 24),
                width: 294,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  color: AppColors.containerColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                  "https://i.scdn.co/image/ab67706f000000039a25748cbbef9efb2c8b8339",
                                  width: 263.52,
                                  height: 263.2),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
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
                    )),
              ),
            ),

//            //
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.center,
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

            ////
            Container(
              height: 32,
              width: 195,
              margin: const EdgeInsets.only(left: 192),
              decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                ),
              ),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    "286,850 Followers",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 11,
                      color: AppColors.whiteS,
                    ),
                  ),
                ),
              ),
            ),

            //divider
            Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 32, right: 32, left: 32),
              child: SizedBox(
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
            ),

            ///////////////
            ListView.builder(
              scrollDirection: Axis.vertical,
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

            ////
            /// ////////////
            Container(
                height: 56,
                margin: const EdgeInsets.only(top: 24),
                width: 342,
                padding: const EdgeInsets.only(left: 15),
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
                      fontSize: 22,
                      color: AppColors.whiteS,
                    ),
                  ),
                )),

            Container(
              margin: const EdgeInsets.all(32.0),
              alignment: Alignment.center,
              child: SizedBox(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 12),
                      itemBuilder: (context, index) => buildCard())),
            ),
          ],
        )));
  }

  Widget buildCard() => Container(
        height: 150,
        width: 150,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                    "https://i.scdn.co/image/ab6761610000f178eb241673a5bd438b51ba124e")),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Davido',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      );
}
