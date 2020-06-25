import 'package:bottomstreet/UI/SignupPage/enterpassword.dart';
import 'package:bottomstreet/UI/SignupPage/setupaccount.dart';
import 'package:bottomstreet/UI/color.dart';
import 'package:bottomstreet/UI/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {

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
                  AllString.otpverification,
                  style: TextStyle(
                      color: ColorData.fullblack,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.07),
                ),
                Text(
                  AllString.entertheotp,
                  style: TextStyle(
                      color: ColorData.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.05),
                ),
                Text(
                  AllString.number,
                  style: TextStyle(
                      color: ColorData.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.05),
                ),
                SizedBox(
                  height: screnwidth / 8,
                ),
                Center(
                  child: Card(
                    child: Container(
                      height: screnheight/5,
                      width: screnwidth/1.7,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Container(height: screnwidth/5,width: screnwidth/10,child: TextField(),),
                          Container(height: screnwidth/5,width: screnwidth/10,child: TextField(),),
                          Container(height: screnwidth/5,width: screnwidth/10,child: TextField(),),
                          Container(height: screnwidth/5,width: screnwidth/10,child: TextField(),),

                        ],),
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
                    width: screnwidth * 0.60,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                      color: ColorData.fullblack,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        onTap: (){

                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>EnterPassword()));

                        },
                        splashColor: ColorData.splashcolor,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                AllString.verify,
                                style: TextStyle(
                                    color: ColorData.white,
                                    fontSize: screnheight * 0.025,
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
                SizedBox(
                  height: screnwidth / 10,
                ),
                GestureDetector(
                  onTap: (){
                  },
                  child: Center(
                    child: RichText(text: TextSpan(
                        text: AllString.dontreceiveotp,
                        style: TextStyle(fontWeight: FontWeight.bold,color: ColorData.black54,fontSize: screnwidth*0.04),
                        children: [
                          TextSpan(
                            text: AllString.resend,
                            style: TextStyle(fontWeight: FontWeight.bold,color: ColorData.fullblack,fontSize: screnwidth*0.04),
                          )
                        ]
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
