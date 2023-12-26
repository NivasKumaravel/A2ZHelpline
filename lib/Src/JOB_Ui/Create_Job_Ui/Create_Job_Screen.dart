import 'package:a2zhelpline/Common_Widgets/Common_Button.dart';
import 'package:a2zhelpline/Common_Widgets/Custom_App_Bar.dart';
import 'package:a2zhelpline/Common_Widgets/Text_Form_Field.dart';
import 'package:a2zhelpline/utilits/Common_Colors.dart';
import 'package:a2zhelpline/utilits/Text_Style.dart';
import 'package:flutter/material.dart';

class Create_Job_Screen extends StatefulWidget {
  const Create_Job_Screen({super.key});

  @override
  State<Create_Job_Screen> createState() => _Create_Job_ScreenState();
}

class _Create_Job_ScreenState extends State<Create_Job_Screen> {
  int? _value;
  bool _isbranchNeed= false;
  TextEditingController _FullName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white5,
      appBar: Custom_AppBar(title: "", actions: null, isBlue: false, isNav: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
                child: Text('Create an Account',style: createT,)),
            //FULL NAME
             Title_Style(Title: 'Full Name', isStatus: true),
             textFormField(
               hintText: 'Full Name',
               keyboardtype: TextInputType.text,
               inputFormatters: null,
               Controller: _FullName,
               validating: (value) {
                 if (value == null || value.isEmpty) {
                   return "Please Enter Valid${'Full Name'}";
                 }
                 if (value == null) {
                   return "Please Enter Valid${'Full Name'}";
                 }
                 return null;
               },
               onChanged: null,
             ),
             //GENDER
             Title_Style(Title: 'Gender', isStatus: true),
             _RadioButton(),
             //FATHER NAME
             Title_Style(Title: 'Father Name', isStatus: true),
             textFormField(
               hintText: 'Father Name',
               keyboardtype: TextInputType.text,
               inputFormatters: null,
               Controller: _FullName,
               validating: (value) {
                 if (value == null || value.isEmpty) {
                   return "Please Enter Valid${'Father Name'}";
                 }
                 if (value == null) {
                   return "Please Enter Valid${'Father Name'}";
                 }
                 return null;
               },
               onChanged: null,
             ),
           ],
        ),
      ),
    );
  }
  Widget _RadioButton(){
    return RadioButton(
        groupValue1: _value,
        onChanged1: (value1) {
          setState(() {
            _value = value1;
            _isbranchNeed = true;
            print("Yes");
          });
        }, radioTxt1: "Male",
        groupValue2: _value,
        onChanged2: (value2) {
          setState(() {
            _value = value2;
            _isbranchNeed = false;
            print("No");
          });
        }, radioTxt2: 'Female');
  }
}
