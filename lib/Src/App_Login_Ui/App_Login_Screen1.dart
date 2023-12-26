import 'package:a2zhelpline/Common_Widgets/Common_Button.dart';
import 'package:a2zhelpline/Common_Widgets/Image_Path.dart';
import 'package:a2zhelpline/utilits/Common_Colors.dart';
import 'package:a2zhelpline/utilits/Text_Style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'App_Login_Screen2.dart';


class App_Login_Screen1 extends StatefulWidget {
  const App_Login_Screen1({super.key});

  @override
  State<App_Login_Screen1> createState() => _App_Login_Screen1State();
}

class _App_Login_Screen1State extends State<App_Login_Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: white1,
      ),
      body: SingleChildScrollView(
        child:_mainBody(),
      ),
    );
  }
  //MAIN BODY
  Widget _mainBody(){
    return  Container(
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
              child: ImgPathSvg('applogin1.svg')),
          //WELCOME TEXT
          Container(
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              alignment: Alignment.topLeft,
              width: MediaQuery.sizeOf(context).width/1.5,
              child: Text('Welcome To AtoZ Helpline',style: appLoginT,maxLines: 2,)),
          //WELCOME CONTENT
          Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              width: MediaQuery.sizeOf(context).width/1.1,
              child: Text('Discover the perfect job or find the ideal candidate and Buy or sell Products with AtoZ Helpline App!',style: appLoginT1,maxLines: 3,)),
          //CAROSEL COUNT
          Container(
              margin: EdgeInsets.only(top: 15,left: 20,right: 20),
              alignment: Alignment.topLeft,
              child: ImgPathSvg('carosel1.svg')),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 70),
              child: CommonElevatedButton(context, "Next", () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>App_Login_Screen2()));
              }),
            ),
          ),
        ],
      ),
    );
  }
}


