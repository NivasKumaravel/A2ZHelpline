import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utilits/Common_Colors.dart';
import '../utilits/Text_Style.dart';

//TEXTFORM FIELD

Widget textFormField(
    {TextEditingController? Controller,
    String? Function(String?)? validating,
     bool? isEnabled,
    void Function(String)? onChanged,required String hintText,List<TextInputFormatter>? inputFormatters,required TextInputType keyboardtype}) {
  return
    Container(
      // height: 50,
      child:
      TextFormField(
        enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
        decoration: InputDecoration(
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: phoneHT,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
          fillColor: Colors.white,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
        keyboardType: keyboardtype,
  ),
    );
}
//white
Widget textFormField2(
    {TextEditingController? Controller,
      String? Function(String?)? validating,
      bool? isEnabled,
      void Function(String)? onChanged,required String hintText,List<TextInputFormatter>? inputFormatters,required TextInputType keyboardtype}) {
  return
    Container(
      // height: 50,
      child:
      TextFormField(
        enabled: isEnabled,
        controller: Controller,
        textCapitalization: TextCapitalization.none,
        inputFormatters: inputFormatters,
        validator: validating,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: white1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: white1),
          ),
          fillColor: white1,
          filled: true,
        ),
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        style: Textfield_Style,
        keyboardType: keyboardtype,
      ),
    );
}

//TEXTFIELD DATE PICKER
Widget TextFieldDatePicker({TextEditingController? Controller,
  String? Function(String?)? validating,
  void Function(String)? onChanged,required String hintText,void Function()? onTap}){
  return  TextFormField(
    controller:Controller ,
     autovalidateMode: AutovalidateMode.onUserInteraction,
    onTap: onTap,
    readOnly: true,
    keyboardType: TextInputType.number,
    maxLength: 15,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: white1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: white1),
      ),
      counterText: "",
      hintText: 'DD / MM / YYYY',
      helperStyle: phoneHT,
      prefixIcon: Icon(Icons.calendar_month,
        color:grey1,
        size: 24,),
      hintStyle: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        color: Colors.grey,
      ),
      errorMaxLines: 1,
      contentPadding: const EdgeInsets.only(
          top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
      fillColor: white1,
      filled: true,
    ),
    validator: validating,
    onChanged: onChanged,
    textInputAction: TextInputAction.next,
    style: const TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: Colors.black,
    ),
  );
}

// TEXT FIELD PASSWORD
Widget textFieldPassword(
    {TextEditingController? Controller,
  String? Function(String?)? validating,
  void Function(String)? onChanged,required bool obscure,required void Function()? onPressed,required String hintText,required TextInputType keyboardtype}){
  return  Container(
    // height: 50,
    child:
    TextFormField(
      controller: Controller,
      obscureText: obscure,
      validator:validating,
      decoration: InputDecoration(
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: phoneHT,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: white2),
          borderRadius: BorderRadius.circular(10)
        ),
        suffixIcon: IconButton(
          icon: Icon(obscure
              ? Icons.lock
              : Icons.lock_open,color: white1,),
          onPressed: onPressed,
        ),
        fillColor: white2,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardtype,
      style: Textfield_Style,
    ),
  );
}


//DESCRIPTION
Widget textfieldDescription({
  TextEditingController? Controller,
  String? Function(String?)? validating,required String hintText}){
  return Container(
    // height: 50,
    child: TextFormField(
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      maxLines: 5,
      minLines: 3,
      keyboardType: TextInputType.multiline,
      validator: validating,
      decoration: InputDecoration(
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: white1),
            borderRadius: BorderRadius.circular(10),
        ),
        fillColor: white1,
        filled: true,
      ),
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
    ),
  );
}

//SEARCH BAR
Widget textFormFieldSearchBar(
    {
      TextEditingController? Controller,
      String? Function(String?)? validating,
      bool? isEnabled,
      void Function(String)? onChanged,
      required String hintText,
      List<TextInputFormatter>? inputFormatters,
      required TextInputType keyboardtype,
      required void Function()? onTap,
    }) {
  return
    Container(
      // height: 50,
      child:
      TextFormField(
        onTap:onTap,
        enabled: isEnabled,
        controller: Controller,
        textCapitalization: TextCapitalization.none,
        inputFormatters: inputFormatters,
        validator: validating,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: hintText,
          hintStyle: phoneHT,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: white2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: white2),
          ),
          fillColor: white5,
          filled: true,
          prefixIcon: Icon(Icons.search,size: 24,color: grey2,),
        ),

        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        style: Textfield_Style,
        keyboardType: keyboardtype,
      ),
    );
}


  Widget buildCompanyInfoRow(String pathPNG, String companyName,
    TextStyle textStyle, double imageWidth, double imageHeight) {
  return Container(
    child: Row(
      children: [
        Container(
          height: imageHeight,
          width: imageWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage("lib/assets/$pathPNG"),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Text(
              companyName,
              style: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget collegeRowTitle(String pathPNG, String companyName,
    TextStyle textStyle, double imageWidth, double imageHeight) {
  return Container(
    child: Row(
      children: [
        Container(
          height: imageHeight,
          width: imageWidth,
          child: Image(
            image: AssetImage("lib/assets/$pathPNG"),
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Text(
              companyName,
              style: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    ),
  );
}







//DropDownExperience
Widget dropDownField(context,{required String? value,required List<String>? listValue,required void Function(String?)? onChanged}){
  return  Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white1
    ),
    child:  DropdownButtonFormField<String>(
      value: value,
      isExpanded: true,
      decoration:
      InputDecoration(border: InputBorder.none),
      icon: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.black,size: 35,
        ),
      ),
      items: listValue?.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Text(option),
          ),
        );
      }).toList(),
      onChanged: onChanged,
    ),
  );
}




