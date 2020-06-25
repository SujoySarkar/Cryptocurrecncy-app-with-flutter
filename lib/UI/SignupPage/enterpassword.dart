import 'package:bottomstreet/UI/Homepage/bottomnav.dart';
import 'package:bottomstreet/UI/color.dart';
import 'package:bottomstreet/UI/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterPassword extends StatefulWidget {
  @override
  _EnterPasswordState createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  @override
  Widget build(BuildContext context) {
    var screnheight = MediaQuery.of(context).size.height;
    var screnwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(icon: Icon(Icons.close,color: Colors.black,size: screnwidth*0.08,), onPressed: (){
                  Navigator.pop(context);
                },),
                SizedBox(
                  height: screnwidth / 12,
                ),
                Text(
                  AllString.enternewpass,
                  style: TextStyle(
                      color: ColorData.fullblack,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.07),
                ),
                Text(
                  AllString.password,
                  style: TextStyle(
                      color: ColorData.fullblack,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.07),
                ),
                SizedBox(
                  height: screnwidth / 8,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    height: screnwidth / 1.8,
                    width: screnwidth,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            AllString.newpass,
                            style: TextStyle(
                                color: ColorData.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: screnwidth * 0.030),
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: screnwidth * 0.050,
                                color: ColorData.black87,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: ColorData.fullblack,
                              ),
                              hintText: "********",
                              hintStyle: TextStyle(
                                  fontSize: screnwidth * 0.050,
                                  color: ColorData.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: screnwidth * 0.055,
                          ),
                          Text(
                            AllString.confirmpass,
                            style: TextStyle(
                                color: ColorData.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: screnwidth * 0.030),
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: screnwidth * 0.050,
                                color: ColorData.black87,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: ColorData.fullblack,
                              ),
                              hintText: "********",
                              hintStyle: TextStyle(
                                  fontSize: screnwidth * 0.050,
                                  color: ColorData.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screnwidth / 3,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(10),)
                    ),
                    height: screnwidth * 0.14,
                    width: screnwidth * 0.50,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                      color: ColorData.fullblack,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        onTap: (){

                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>BottomNavBar()));

                        },
                        splashColor: ColorData.splashcolor,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                AllString.submit,
                                style: TextStyle(
                                    color: ColorData.white,
                                    fontSize: screnheight * 0.03,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
