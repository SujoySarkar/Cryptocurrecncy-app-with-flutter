import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text("News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          bottom: TabBar(
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
              tabs: [
            Tab(
              text: "Stock",
            ),
            Tab(
              text: "Crypto",
            ),
            Tab(
              text: "Forex",
            ),
            Tab(
              text: "Mutual Fund",
            ),

          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(color: Colors.transparent,),
            Container(color: Colors.transparent,),
            Container(color: Colors.transparent,),
            Container(color: Colors.transparent,),

          ],
        )
      ),
    );
  }
}