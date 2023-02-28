import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowAlbumCard extends StatelessWidget {
  final ImageProvider albumCover;
  final String albumTitle;
  const RowAlbumCard({
    super.key, required this.albumCover, required this.albumTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white10),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Image(
            image: albumCover,
            height: 50,
            width: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              albumTitle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}