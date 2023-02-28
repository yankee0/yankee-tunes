import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SongCard extends StatelessWidget {
  final ImageProvider songImage;
  final String songName;
  const SongCard({super.key, required this.songImage, required this.songName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
      ),
      child: Container(
        width: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: songImage,
              height: 130,
              width: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                songName,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
