import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  @override
  _WatchListState createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: Icon(Icons.more_vert,color: Colors.black,),
          title: Text("Watch List",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          bottom: TabBar(
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
              tabs: [
                Tab(
                  text: "Indices",
                ),
                Tab(
                  text: "Stocks",
                ),
                Tab(
                  text: "Mutual Fund",
                ),
                Tab(
                  text: "Forex",
                ),

              ]),
        ),
        body: TabBarView(children: [
          Container(color: Colors.transparent,),
          Container(color: Colors.transparent,),
          Container(color: Colors.transparent,),
          Container(color: Colors.transparent,),
        ]),
      ),
    );
  }
}