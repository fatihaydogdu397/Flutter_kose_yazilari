import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class YaziCard extends StatelessWidget {
  const YaziCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                // spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
        // border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl:
                    "https://avatars2.githubusercontent.com/u/24523510?s=460&u=db56236dbf10726234bf79abb4ea7591404a1c1a&v=4",
                placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    new Icon(Icons.person_add_alt_1_outlined),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0,top:8),
                    child: AutoSizeText(
                      "Devlet zoruyla rektörlük yapılmaz (Rüşvet verirseniz ayrı ama)",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.grey[850],
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0,bottom:5),
                    child: AutoSizeText(
                      "Murat Aslan",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: AutoSizeText(
                      "Sol Gazetesi",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(MdiIcons.starOutline, color: Colors.yellow[600], size: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "2 saat",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        "3/2/2021",
                        style: TextStyle(fontSize: 11),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
