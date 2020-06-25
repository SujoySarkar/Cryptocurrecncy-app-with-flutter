import 'package:bottomstreet/UI/Homepage/bottomnav.dart';
import 'package:bottomstreet/UI/SignupPage/setupaccount.dart';
import 'package:bottomstreet/UI/color.dart';
import 'package:bottomstreet/UI/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                SizedBox(
                  height: screnwidth / 12,
                ),
                Text(
                  AllString.hellothere,
                  style: TextStyle(
                      color: ColorData.fullblack,
                      fontWeight: FontWeight.bold,
                      fontSize: screnwidth * 0.09),
                ),
                Text(
                  AllString.loginorsignuptocontinue,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: ColorData.fullblack,
                      fontSize: screnwidth * 0.040),
                ),
                SizedBox(
                  height: screnwidth / 5.5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  elevation: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    height: screnwidth / 1.27,
                    width: screnwidth,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            AllString.emailaddress,
                            style: TextStyle(
                                color: ColorData.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: screnwidth * 0.030),
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: screnwidth * 0.045,
                                color: ColorData.black87,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.done,
                                color: ColorData.fullblack,
                              ),
                              hintText: "prashant@gmail.com",
                              hintStyle: TextStyle(
                                  fontSize: screnwidth * 0.045,
                                  color: ColorData.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: screnwidth * 0.055,
                          ),
                          Text(
                            AllString.password,
                            style: TextStyle(
                                color: ColorData.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: screnwidth * 0.030),
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: screnwidth * 0.045,
                                color: ColorData.black87,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: ColorData.fullblack,
                              ),
                              hintText: "********",
                              hintStyle: TextStyle(
                                  fontSize: screnwidth * 0.045,
                                  color: ColorData.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: screnwidth * 0.02,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              AllString.forgetpassword,
                              style: TextStyle(
                                  color: ColorData.black54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: screnwidth * 0.04),
                            ),
                          ),
                          SizedBox(
                            height: screnwidth * 0.06,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(

                                    shape: BoxShape.circle),
                                height: screnwidth * 0.12,
                                width: screnwidth * 0.133,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset("images/googlelogo.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(

                                    shape: BoxShape.circle),
                                height: screnwidth * 0.12,
                                width: screnwidth * 0.13,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset("images/facebook.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screnwidth*0.15,
                              ),
                              Container(
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.all(Radius.circular(10),)
                                ),
                                height: screnwidth * 0.14,
                                width: screnwidth * 0.30,
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
                                            AllString.login,
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
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screnwidth / 10,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>SetupAccount()));
                  },
                  child: RichText(text: TextSpan(
                    text: AllString.donthaveanaccount,
                    style: TextStyle(fontWeight: FontWeight.bold,color: ColorData.black54,fontSize: screnwidth*0.04),
                    children: [
                      TextSpan(
                        text: AllString.signup,
                        style: TextStyle(fontWeight: FontWeight.bold,color: ColorData.fullblack,fontSize: screnwidth*0.04),
                      )
                    ]
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
