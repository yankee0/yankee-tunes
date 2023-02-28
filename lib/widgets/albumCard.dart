import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yankee_tunes/views/album.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider albumImage;
  final String albumTitle;
  const AlbumCard({
    super.key,
    required this.albumImage,
    required this.albumTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Album(),
          ),
        );
      },
      child: SizedBox(
        width: 130,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: albumImage,
                height: 130,
                width: 130,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  albumTitle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
