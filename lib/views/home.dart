import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yankee_tunes/widgets/songCard.dart';

import '../widgets/albumCard.dart';
import '../widgets/rowAlbumCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 255, 255, 255),
                  Colors.black.withOpacity(.3),
                ],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(.9),
                      Colors.black,
                      Colors.black,
                      Colors.black,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 0,
                        top: 40,
                        bottom: 5,
                      ),
                      child: Text(
                        'Recently played',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AlbumCard(
                            albumImage: AssetImage('assets/album1.jpeg'),
                            albumTitle: 'Blond',
                          ),
                          AlbumCard(
                            albumImage: AssetImage('assets/album2.jpeg'),
                            albumTitle: 'Skyland',
                          ),
                          AlbumCard(
                            albumImage: AssetImage('assets/album3.jpeg'),
                            albumTitle: 'December 12 kdjlakjdljslkjkdjls',
                          ),
                          AlbumCard(
                            albumImage: AssetImage('assets/album4.jpeg'),
                            albumTitle: 'Templates',
                          ),
                          AlbumCard(
                            albumImage: AssetImage('assets/album5.jpeg'),
                            albumTitle: 'Hey ',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 0,
                        top: 30,
                        bottom: 5,
                      ),
                      child: Text(
                        'Yankee\'s Mood',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: RowAlbumCard(
                                    albumCover: AssetImage('assets/global1.jpeg'),
                                    albumTitle: 'Week top 10',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: RowAlbumCard(
                                    albumCover: AssetImage('assets/global2.jpeg'),
                                    albumTitle: 'Just flex',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: RowAlbumCard(
                                    albumCover: AssetImage('assets/global3.jpeg'),
                                    albumTitle: 'Dance',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: RowAlbumCard(
                                    albumCover: AssetImage('assets/global4.jpeg'),
                                    albumTitle: 'Shuffle up',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: RowAlbumCard(
                                    albumCover: AssetImage('assets/album8.jpeg'),
                                    albumTitle: 'Dubstep',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: RowAlbumCard(
                                    albumCover: AssetImage('assets/album7.jpeg'),
                                    albumTitle: 'Rap',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 0,
                        top: 40,
                        bottom: 5,
                      ),
                      child: Text(
                        'Based on your recent listening',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SongCard(
                            songImage: AssetImage('assets/album2.jpeg'),
                            songName: 'Dip, Omzo, Ngaaka, Elzo',
                          ),
                          SongCard(
                            songImage: AssetImage('assets/album7.jpeg'),
                            songName: 'Dababy, Lil baby, Kendrick Lamar',
                          ),
                          SongCard(
                            songImage: AssetImage('assets/album5.jpeg'),
                            songName: 'NL, Neflex, Arthur Durant',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 0,
                        top: 40,
                        bottom: 5,
                      ),
                      child: Text(
                        'Recommanded radio',
                        style: Theme.of(context).textTheme.headlineSmall,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SongCard(
                            songImage: AssetImage('assets/album8.jpeg'),
                            songName: 'Dip, Omzo, Ngaaka, Elzo',
                          ),
                          SongCard(
                            songImage: AssetImage('assets/album1.jpeg'),
                            songName: 'Dababy, Lil baby, Kendrick Lamar',
                          ),
                          SongCard(
                            songImage: AssetImage('assets/album3.jpeg'),
                            songName: 'NL, Neflex, Arthur Durant',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
