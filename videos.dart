import 'package:flutter/material.dart';
import 'package:youtube/videosinfo.dart';

class videos extends StatelessWidget {
  const videos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: videosinfo.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(videosinfo[index]["thumbnail"].toString(),),
            const SizedBox(height: 1),
            SizedBox(
              height: 110,
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage(videosinfo[index]["pfp"].toString(),),
              ),
              title: Text(
                videosinfo[index]["title"].toString(),
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "${videosinfo[index]["channel"]} · ${videosinfo[index]["views"]} · ${videosinfo[index]["date"]}",
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.more_vert, color: Colors.white),
            ),
            )
          ],
        );
      },
    );
  }
}
