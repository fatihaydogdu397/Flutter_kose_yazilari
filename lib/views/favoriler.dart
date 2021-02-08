import 'package:flutter/material.dart';
import 'package:kose_yazilari/core/widgets/yazar_card.dart';
import 'package:kose_yazilari/core/widgets/yazi_card.dart';
import 'package:kose_yazilari/views/gazeteler.dart';
import 'package:kose_yazilari/views/guncel_yazilar.dart';
import 'package:kose_yazilari/views/yazarlar.dart';

class Favoriler extends StatelessWidget {
  const Favoriler({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            
            shape: RoundedRectangleBorder(
              
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            bottom: TabBar(
              indicatorColor:Colors.grey,
              tabs: [
                Tab(text: "Favori Yazılar"),
                Tab(text: "Favori Yazarlar"),
                Tab(text: "Favori Gazeteler"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            GuncelYazilar(),
            Yazarlar(),
            Gazeteler(),


          ],
        ),
      ),
    );
  }
}
