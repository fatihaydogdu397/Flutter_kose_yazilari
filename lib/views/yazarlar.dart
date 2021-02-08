import 'package:flutter/material.dart';
import 'package:kose_yazilari/core/widgets/yazar_card.dart';
import 'package:kose_yazilari/core/widgets/yazi_card.dart';
import 'package:kose_yazilari/views/arama.dart';

class Yazarlar extends StatelessWidget {
  const Yazarlar({Key key}) : super(key: key);

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
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          YazarCard(),
          
          
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
