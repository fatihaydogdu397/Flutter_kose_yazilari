import 'package:flutter/material.dart';
import 'package:kose_yazilari/core/widgets/gazete_card.dart';

class Gazeteler extends StatelessWidget {
  const Gazeteler({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(2),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 3,
        children: <Widget>[
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          GazeteCard(),
          
        ],
      ),
      // SafeArea(
      //   child: SingleChildScrollView(
      //       child: Column(
      //     children: [
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //       GazeteCard(),
      //     ],
      //   )),
      // ),
    );
  }
}


