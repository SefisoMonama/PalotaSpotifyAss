import 'dart:html';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_africa_assessment/colors.dart';
import 'package:flutter_spotify_africa_assessment/features/spotify/presentation/pages/spotify_playlist.dart';
import 'package:flutter_spotify_africa_assessment/routes.dart';
import 'package:http/http.dart' as http;

// TODO: fetch and populate playlist info and allow for click-through to detail
// Feel free to change this to a stateful widget if necessary

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpotifyCategory(
      categoryId: '',
    ),
  ); //MaterialApp
}

String stringResponse = "";
String token = "";
const String client_id = '5ec1b3bd9ba344769d975a2911bd2af9';
var client_secret = '32fbe789793543d7a744954f0b7a2422';
Map? mapResponse;
Map? mapResponsePlaylist;
Map? dataResponse;
List? listResponse;
List? listResponsePlaylis;
List? listPlaylist;
Map? dataResponsePlaylist;

class SpotifyCategory extends StatefulWidget {
  final String categoryId;

  const SpotifyCategory({Key? key, required this.categoryId}) : super(key: key);

  @override
  State<SpotifyCategory> createState() => _SpotifyCategoryPageState();
}

class _SpotifyCategoryPageState extends State<SpotifyCategory> {
  String apiToken =
      "BQBF5GX_Ide7gDxo_vhAuZPRYRT70uz2o74cX6OpR81OLmho72YJRmdu6nqH0rFd7rqxeZ04uOn7SZS-pwDvL0KWq158fN6nkkfY16C6d9P6hSRNw78";

  //get category
  Future apicall() async {
    http.Response response;
    response = await http.get(
        Uri.parse("https://api.spotify.com/v1/browse/categories/afro"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $apiToken',
        });

//return bad request when getting status code 401 upon request
    if (response.statusCode == 401) {
      setState(() {
        stringResponse = "Bad request";
      });
    }

//get category body as list when getting status code 200 (success)
    if (response.statusCode == 200) {
      setState(() {
        //stringResponse = jsonDecode(response.body).toString();
        mapResponse = json.decode(response.body);
        listResponse = mapResponse!['icons'];
      });
    }
  }

  //get playlist
  Future playlist() async {
    http.Response response;
    response = await http.get(
        Uri.parse(
            "https://api.spotify.com/v1/browse/categories/afro/playlists"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $apiToken',
        });

//return bad request when getting status code 401 upon request
    if (response.statusCode == 401) {
      setState(() {
        stringResponse = "Bad request";
      });
    }

//get playlist body as list when getting status code 200 (success)
    if (response.statusCode == 200) {
      setState(() {
        //stringResponse = jsonDecode(response.body).toString();
        mapResponsePlaylist = json.decode(response.body);
        //listPlaylist = mapResponsePlaylist!['playlists'];
        listResponsePlaylis = mapResponsePlaylist!['playlists'];
      });
    }
  }

//generate user token active for 1 hour
  Future getToken() async {
    print('feg');
    final response = await http
        .post(Uri.parse('https://accounts.spotify.com/api/token'), headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    }, body: {
      'grant_type': 'client_credentials',
      'client_id': client_id,
      'client_secret': client_secret,
    });
    token = jsonDecode(response.body).toString();
    print("token: $token");
    //return Post.fromJson(responseJson);
    return token;
  }

  @override
  void initState() {
    apicall();
    playlist();
    //getToken();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Afro"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.about),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  AppColors.blue,
                  AppColors.cyan,
                  AppColors.green,
                ],
              ),
            ),
          ),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 24, top: 24),
            height: 72,
            //width: 366,
            decoration: const BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  12,
                ),
                bottomLeft: Radius.circular(
                  12,
                ),
              ),
            ),
            child: Row(
              //child: Text(token),
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: listResponse == null
                          ? const Text("Loading...")
                          //: Image.network(mapResponse!['icons'].toString()),
                          //: Image.network("https://t.scdn.co/images/b505b01bbe0e490cbe43b07f16212892.jpeg"),
                          : Image.network(listResponse![0]['url'].toString(),
                              width: 64, height: 64),
                    )),

                //Text(listResponse![0]['name'].toString())
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Afro",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                      fontSize: 28,
                      color: AppColors.whiteS,
                    ),
                  ),
                ),
                const Text(
                  "playlist",
                  style: TextStyle(
                      color: AppColors.whiteS,
                      fontSize: 28,
                      fontFamily: 'RobotoMono'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 163,
                    margin: const EdgeInsets.only(left: 24, top: 24),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 187,
                            margin: const EdgeInsets.only(top: 24),
                            width: 163,
                            decoration: const BoxDecoration(
                              color: AppColors.containerColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment:
                                // MainAxisAlignment.spaceEvenly,
                                children: [
                                  mapResponse == null
                                      ? const Text("Loading...")
                                      //: Image.network(mapResponse!['icons'].toString()),
                                      : GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              AppRoutes.playlist,
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                                "https://i.scdn.co/image/ab67706f00000003740df3771d19c09eebf4ed78",
                                                width: 155,
                                                height: 155),
                                          ),
                                        ),

                                  //Text(listResponsePlaylis![1]['href'].toString()),

                                  //: Image.network(listResponse![0]['url'].toString(),
                                  // width: 160, height: 150),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Peppeh"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
              ),
            ]),
          ),
        ])

        /////
        /*Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                child: const Column(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Sfiso"),
                  ),
                  //Text(listResponsePlaylis![index]['name']),
                ]),
              );
            },
            itemCount:
                listResponsePlaylis == null ? 0 : listResponsePlaylis!.length,
          ))**/

        );
  }
}
