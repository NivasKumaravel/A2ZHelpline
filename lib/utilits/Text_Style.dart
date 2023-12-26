import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Common_Colors.dart';


TextStyle LoginT=TextStyle( fontFamily: 'Roboto', fontSize: 24, color: Color.fromRGBO(52, 52, 52, 1), fontWeight: FontWeight.w700);
TextStyle appTitle=TextStyle( fontFamily: 'Roboto', fontSize: 18, color: blue3, fontWeight: FontWeight.w500);
TextStyle appTitle2=TextStyle( fontFamily: 'Roboto', fontSize: 18, color: white1, fontWeight: FontWeight.w500);
TextStyle notificationTitle=TextStyle( fontFamily: 'Nunito', fontSize: 16, color: blue3, fontWeight: FontWeight.w700);
TextStyle ProuctT=TextStyle( fontFamily: 'Roboto', fontSize: 20, color: Color.fromRGBO(52, 52, 52, 1), fontWeight: FontWeight.w700);
TextStyle ProductPriceT=TextStyle( fontFamily: 'Roboto', fontSize: 18, color: Color.fromRGBO(52, 52, 52, 1), fontWeight: FontWeight.w500);
TextStyle phoneHT=TextStyle( fontFamily: 'Roboto', fontSize: 14, color: Color.fromRGBO(140, 140, 140, 1), fontWeight: FontWeight.w400);
TextStyle Textfield_Style=TextStyle( fontFamily: 'Inter', fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400);
TextStyle TextField_Title=TextStyle( fontFamily: 'Montserrat', fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w500);
TextStyle Textfield_Style2=TextStyle( fontFamily: 'Inter', fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500);
TextStyle StarT=TextStyle(color: Colors.red,fontSize: 25);

TextStyle ButtonT=GoogleFonts.openSans(textStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400));
TextStyle radioT=GoogleFonts.openSans(textStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400));
TextStyle ButtonT1=TextStyle( fontFamily: 'Inter', fontSize: 12, color: blue3, fontWeight: FontWeight.w700);

//APP LOGIN TEXT
TextStyle appLoginT=TextStyle( fontFamily: 'Montserrat', fontSize: 36, color: Colors.black, fontWeight: FontWeight.w700);
TextStyle appLoginT1=GoogleFonts.openSans(textStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400));
//CREATE ACCOUNT
TextStyle createT=TextStyle( fontFamily: 'Montserrat', fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700);



//HEADING
Widget Title_Style({required String Title, required bool? isStatus}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15,bottom: 10),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // width: 135,
          child: Text(
            Title,
            style: TextField_Title,
          ),
        ),
        Text(
          isStatus == true ? "*" : "",
          style: StarT,
        )
      ],
    ),
  );
}

Widget RadioText(String txt) {
  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: Text(
      txt,
      style: radioT,
    ),
  );
}






