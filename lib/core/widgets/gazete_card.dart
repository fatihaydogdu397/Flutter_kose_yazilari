import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GazeteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
        //  padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 10, right: 10, top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              // spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(
          //   color: Colors.grey[300],
          // )
          //   Border(
          // bottom: BorderSide(
          //   width: 1,
          //   color: Colors.grey[300],
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: EdgeInsets.only(right: 5,top:5),
                      child: Icon(
                        MdiIcons.heartOutline,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, left: 20, bottom: 5, right: 20),
              // height: 75,
              child: ClipOval(
                child: Image(
                  width: 80,
                  height: 80,
                  image: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1278305905654804480/MOKk09xm_400x400.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Akşam Gazetesi",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[900]),
                )),
          ],
        ));
  }
}
