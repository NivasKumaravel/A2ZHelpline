import 'package:a2zhelpline/Common_Widgets/Common_Button.dart';
import 'package:a2zhelpline/Common_Widgets/Image_Path.dart';
import 'package:a2zhelpline/utilits/Common_Colors.dart';
import 'package:a2zhelpline/utilits/Text_Style.dart';
import 'package:flutter/material.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: white1,
      ),
      body: SingleChildScrollView(
        child:_mainBody() ,
      ),
    );
  }
  //MAIN BODY
  Widget _mainBody(){
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //LOGO
          Container(
              margin: EdgeInsets.only(top: 50,left: 20,right: 20),
              alignment: Alignment.center,
              child: ImgPathSvg('applogin3.svg')),
          //WELCOME TEXT
          Container(
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              alignment: Alignment.topLeft,
              width: MediaQuery.sizeOf(context).width/1.5,
              child: Text('ARE YOU LOOKING FOR',style: appLoginT,maxLines: 2,)),

          const Spacer(),
          //BUTTON
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: green1,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 50),
                  child: CommonElevatedButton(context, "JOB", () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>App_Login_Screen4()));
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 100),
                  child: CommonElevatedButton(context, "Buy / Sell a Products", () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>App_Login_Screen4()));
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


