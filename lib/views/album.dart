import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yankee_tunes/views/home.dart';

class Album extends StatefulWidget {
  const Album({
    super.key,
  });

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  late ScrollController scrollController;
  double imageSize = 250;
  @override
  void initState() {
    scrollController = ScrollController()
      ..addListener(
        () {
          imageSize = 250 - scrollController.offset;
          if (imageSize > 0 && imageSize < 250) {
            setState(() {});
          }
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 38, 79, 37),
            ),
            height: MediaQuery.of(context).size.height * .7,
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  AppBar(
                    title: Text('yankee'),
                    backgroundColor: Color.fromARGB(255, 38, 79, 37),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(.1),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(.2),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(.5),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(.7),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(.9),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(1),
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(1),
                          ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.5),
                                      offset: const Offset(0, 20),
                                      blurRadius: 32,
                                      spreadRadius: 16),
                                ],
                              ),
                              child: Image(
                                image: const AssetImage('assets/album1.jpeg'),
                                width: imageSize,
                                height: imageSize,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 20,
                            ),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: const Image(
                                  image: AssetImage('assets/Yankee.png'),
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Yankee Tunes'),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              '1,000,729 likes 18h 6m',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: const [
                                    Icon(Icons.favorite_border),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.more_horiz)
                                  ],
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.green,
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
