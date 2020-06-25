import 'package:bottomstreet/UI/color.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screnheight = MediaQuery.of(context).size.height;
    var screnwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF070920),
          leading: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {}),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: screnheight / 3.5,
                  width: screnwidth,
                  decoration: BoxDecoration(
                    color: Color(0xFF070920),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          15,
                        ),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: screnwidth / 10,
                        child: Container(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: Image.network(
                              "https://cdn0.iconfinder.com/data/icons/professional-avatar-5/48/manager_male_avatar_men_character_professions-512.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Mr. John",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screnwidth * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "john.45@gmail.com",
                        style: TextStyle(
                            color: Colors.white30,
                            fontSize: screnwidth * 0.040,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                child: Container(
              child: Positioned(
                top: screnwidth / 2.5,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Container(
                    height: screnheight / 2.5,
                    width: screnwidth / 1.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Change Password",
                                style: TextStyle(
                                    color: ColorData.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screnwidth * 0.035),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: ColorData.black54,
                                size: screnwidth * 0.035,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Mobile Number",
                                style: TextStyle(
                                    color: ColorData.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screnwidth * 0.035),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: ColorData.black54,
                                size: screnwidth * 0.035,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Customer Care",
                                style: TextStyle(
                                    color: ColorData.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screnwidth * 0.035),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: ColorData.black54,
                                size: screnwidth * 0.035,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Privacy",
                                style: TextStyle(
                                    color: ColorData.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screnwidth * 0.035),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: ColorData.black54,
                                size: screnwidth * 0.035,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Feedback",
                                style: TextStyle(
                                    color: ColorData.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screnwidth * 0.035),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: ColorData.black54,
                                size: screnwidth * 0.035,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Rate us",
                                style: TextStyle(
                                    color: ColorData.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screnwidth * 0.035),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: ColorData.black54,
                                size: screnwidth * 0.035,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
