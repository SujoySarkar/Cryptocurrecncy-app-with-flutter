import 'package:bottomstreet/UI/HomePageTab/homepagetab.dart';
import 'package:bottomstreet/UI/color.dart';
import 'package:bottomstreet/UI/string.dart';
import 'package:flutter/material.dart';
import 'package:start_chart/chart/line/line_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<double> points = [2, 10, 3, 20, 4];
  @override
  Widget build(BuildContext context) {
    var screnheight = MediaQuery.of(context).size.height;
    var screnwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.more_vert,color: Colors.black,), onPressed: (){}),
        actions: <Widget>[Padding(
          padding: const EdgeInsets.only(right: 20),
          child:IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){}),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AllString.hithere,
                style: TextStyle(
                    color: ColorData.fullblack,
                    fontWeight: FontWeight.bold,
                    fontSize: screnwidth * 0.07),
              ),
              SizedBox(
                height: screnwidth*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      ),
                      height: screnheight/7,
                      width: screnwidth/2.5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("NIFTY 50",style: TextStyle(color: Colors.black38,fontSize: screnwidth*0.025),),
                            Text("11661.99",style: TextStyle(color: Colors.black,fontSize: screnwidth*0.040,fontWeight: FontWeight.bold),),
                            Container(
                              height: screnheight*0.04,
                                width: screnheight*0.15,
                                child: LineChart(
                                  data: points,
                                  textfontSize: 0,
                                  pointColor: Colors.green,
                                  lineColor: Colors.green,
                                )),
                            Text("75.60(0.65%)",
                                style: TextStyle(
                                  fontSize: screnwidth*0.018,
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      ),
                      height: screnheight/7,
                      width: screnwidth/2.5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("SENSEX",style: TextStyle(color: Colors.black38,fontSize: screnwidth*0.025),),
                            Text("11661.99",style: TextStyle(color: Colors.black,fontSize: screnwidth*0.040,fontWeight: FontWeight.bold),),
                            Container(
                              height: screnheight*0.04,
                                width: screnheight*0.15,
                                child: LineChart(
                                  data: points,
                                  textfontSize: 0,
                                  pointColor: Colors.green,
                                  lineColor: Colors.green,
                                )),
                            Text("75.60(0.65%)",
                                style: TextStyle(
                                  fontSize: screnwidth*0.018,
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: screnwidth / 35,
              ),
              Container(
                height: screnheight/1.8,
                  child: HomePageTab()),

            ],

          ),
        ),
      ),
    );
  }
}
