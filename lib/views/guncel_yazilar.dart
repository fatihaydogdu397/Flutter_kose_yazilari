import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kose_yazilari/core/widgets/yazi_card.dart';
import 'package:kose_yazilari/views/arama.dart';

class GuncelYazilar extends StatefulWidget {
  @override
  _GuncelYazilarState createState() => _GuncelYazilarState();
}

class _GuncelYazilarState extends State<GuncelYazilar> {
  Icon _searchIcon = Icon(
    Icons.search,
  );
  bool isSearchClicked = false;
  final TextEditingController _filter = new TextEditingController();

  List<String> itemList = [];

  @override
  void initState() {
    for (int count = 0; count < 50; count++) {
      itemList.add("Item $count");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // createSilverAppBar(),
            SliverFixedExtentList(
              itemExtent: 130,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  index:
                  50;
                  return YaziCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar createSilverAppBar() {
    
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return SliverAppBar(
      actions: <Widget>[
        RawMaterialButton(
          elevation: 0.0,
          child: _searchIcon,
          onPressed: () {
            _searchPressed();
          },
          constraints: BoxConstraints.tightFor(
            width: 56,
            height: 56,
          ),
          shape: CircleBorder(),
        ),
      ],
      // expandedHeight: 300,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(bottom: 5, left: 8),
          centerTitle: false,
          title: isSearchClicked
              ? Container(
                  padding: EdgeInsets.only(bottom: 2),
                  constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
                  width: w*0.7,
                  child: CupertinoTextField(
                    controller: _filter,
                    keyboardType: TextInputType.text,
                    placeholder: "Gazete veya Yazar arayın",
                    placeholderStyle: TextStyle(
                      color: Color(0xffC4C6CC),
                      fontSize: 14.0,
                      fontFamily: 'Brutal',
                    ),
                    prefix: Padding(
                      padding: const EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                  ),
                )
              : Container()),
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = Icon(
          Icons.close,
        );
        isSearchClicked = true;
      } else {
        this._searchIcon = Icon(
          Icons.search,
        );
        isSearchClicked = false;
        _filter.clear();
      }
    });
  }
}
