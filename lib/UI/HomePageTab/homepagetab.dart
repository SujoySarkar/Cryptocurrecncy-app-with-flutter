import 'package:bottomstreet/UI/TabBarPages/active.dart';
import 'package:bottomstreet/UI/TabBarPages/gainers.dart';
import 'package:bottomstreet/UI/TabBarPages/lossers.dart';
import 'package:flutter/material.dart';


class HomePageTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black38,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
            tabs: [
          Tab(

            child:Text('Active',),
          ),
          Tab(

            child:Text('Gainers',),
          ),
          Tab(

            child:Text('Losers',),
          ),
        ]),
        body: TabBarView(children: [
          Active(),
          Gainers(),
          Loosers()
        ]),

      ),
    );
  }
}
