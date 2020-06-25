import 'package:bottomstreet/UI/SignupPage/otpverificarion.dart';
import 'package:bottomstreet/UI/color.dart';
import 'package:bottomstreet/UI/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterMobileNumber extends StatelessWidget {
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
                  AllString.enteryourmobilenumber,
                  style: TextStyle(
                      color: ColorData.fullblack,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.07),
                ),
                Text(
                  AllString.wewillsendverification,
                  style: TextStyle(
                      color: ColorData.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.06),
                ),
                SizedBox(
                  height: screnwidth / 8,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    height: screnheight/5.5,
                    width: screnwidth,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            AllString.mobilenumber,
                            style: TextStyle(
                                color: ColorData.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: screnwidth * 0.035),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                            Container(

                              height: screnwidth*0.09,
                              width: screnwidth*0.09,
                              child: Image.asset("images/india.png",fit: BoxFit.cover,),
                            ),
                            Text("+91",style: TextStyle(
                              fontSize: screnwidth * 0.080,
                              fontWeight: FontWeight.bold,
                            ),),
                            Container(
                              height: screnheight*0.09,
                              width: screnwidth/2,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize: screnwidth * 0.050,
                                    color: ColorData.black87,
                                    ),
                                decoration: InputDecoration(
                                  hintText: "Enter your mobile number",
                                  hintStyle: TextStyle(
                                      fontSize: screnwidth * 0.040,
                                      color: ColorData.black87,
                                      ),
                                ),
                              ),
                            ),
                          ],),
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

                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>OtpVerification()));

                        },
                        splashColor: ColorData.splashcolor,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                AllString.getotp,
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
