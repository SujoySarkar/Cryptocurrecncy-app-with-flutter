import 'package:bottomstreet/UI/SignupPage/entermobile.dart';
import 'package:bottomstreet/UI/color.dart';
import 'package:bottomstreet/UI/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetupAccount extends StatefulWidget {
  @override
  _SetupAccountState createState() => _SetupAccountState();
}

class _SetupAccountState extends State<SetupAccount> {

  @override
  Widget build(BuildContext context) {
    var screnheight = MediaQuery.of(context).size.height;
    var screnwidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
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
                AllString.setupyouraccount,
                style: TextStyle(
                    color: ColorData.fullblack,
                    fontWeight: FontWeight.bold,
                    fontSize: screnwidth * 0.09),
              ),
              Text(
                AllString.account,
                style: TextStyle(
                    color: ColorData.fullblack,
                    fontWeight: FontWeight.bold,
                    fontSize: screnwidth * 0.09),
              ),
              SizedBox(
                height: screnwidth / 7,
              ),
              Text(
                AllString.fullname,
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
                  hintText: "prashant Upadhyay",
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
                  hintText: "prashant Upadhyay",
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
              Text(
                AllString.confirmpassword,
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
                height: screnwidth * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: screnheight*0.07,
                      width: screnheight*0.11,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.arrow_back,color: ColorData.fullblack,),
                          Text(AllString.back,style: TextStyle(
                              color: ColorData.fullblack,
                              fontWeight: FontWeight.w500,
                              fontSize: screnwidth * 0.05),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(10),)
                    ),
                    height: screnwidth * 0.14,
                    width: screnwidth * 0.38,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                      color: ColorData.fullblack,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        onTap: (){

                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>EnterMobileNumber()));

                        },
                        splashColor: ColorData.splashcolor,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                AllString.continnue,
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
    ));
  }
}
