import 'package:flutter/material.dart';

class Arama extends StatelessWidget {
  const Arama({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            //centerTitle:true,title: Text("Güncel Yazılar",style: TextStyle(color:Colors.grey[600]),),
            // actions: [
            //   GestureDetector(
            //     onTap: () {
            //       Navigator.pop(
            //         context,
            //       );
            //     },
            //     child: Padding(
            //       padding: EdgeInsets.only(right: 10),
            //       child: Icon(Icons.search),
            //     ),
            //   )
            // ],
          )
        ],
      ),
    );
  }
}
