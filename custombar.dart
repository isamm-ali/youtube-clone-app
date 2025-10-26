import 'package:flutter/material.dart';

class custombar extends StatelessWidget implements PreferredSizeWidget {
  const custombar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(5.5),
              ),
              height: 28,
              width: 45,

              child: Icon(Icons.play_arrow, color: Colors.white, size: 22,),
            ),
            SizedBox(width: 5,),
            Text("YouTube", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400, fontFamily: "fjalla"),),
            SizedBox(width: 135,),
            Container(
                child: Row(
                    children: [
                      Icon(Icons.cast, color: Colors.white, size: 29,),
                      SizedBox(width: 15,),
                      Icon(Icons.notifications_none_sharp, color: Colors.white, size: 29,),
                      SizedBox(width: 15,),
                      Icon(Icons.search_sharp, color: Colors.white, size: 29,),
                    ]
                )
            )
          ],
        ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
