import 'package:bottomstreet/UI/color.dart';
import 'package:flutter/material.dart';
import 'package:start_chart/chart/line/line_widget.dart';

class Active extends StatefulWidget {
  @override
  _ActiveState createState() => _ActiveState();
}

class _ActiveState extends State<Active> {

  List<double> points = [2, 10, 3, 20, 4];

  @override
  Widget build(BuildContext context) {
    var screnheight = MediaQuery.of(context).size.height;
    var screnwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: screnheight*0.07,
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Yes Bank",
                              style: TextStyle(
                                  fontSize: screnwidth*0.04,
                                  color: ColorData.fullblack,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("BSE",
                                style: TextStyle(
                                  fontSize: screnwidth*0.025,
                                  color: ColorData.black54,
                                )),
                          ],
                        ),
                      ),
                      Container(
                          width: screnheight*0.06,
                          child: LineChart(
                            data: points,
                            textfontSize: 0,
                            pointColor: Colors.green,
                            lineColor: Colors.green,
                          )),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "51.40",
                              style: TextStyle(
                                  fontSize: screnwidth*0.04,
                                  color: ColorData.fullblack,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("75.60(0.65%)",
                                style: TextStyle(
                                  fontSize: screnwidth*0.020,
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
            Divider(),

          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
