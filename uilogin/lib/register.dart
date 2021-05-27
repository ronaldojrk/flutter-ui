import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uilogin/core/AppColors.dart';
import 'package:flutter/services.dart';
class register extends StatefulWidget {

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        shadowColor: Colors.white,
         bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Container(
          color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 50,0),
                child:Image.asset(
                  "images/housesolo.png",
                  //width:MediaQuery.of(context).size.width/1,
                  height:MediaQuery.of(context).size.height/7,
                  fit:BoxFit.contain,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,

                  // border: Border.all( width: 5, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 5),
                child: Text(
                  "Create",
                  textAlign: TextAlign.left,
                  style: TextStyle(

                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: AppColors.textButtonRegisterLinearLeft,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 0),
                child: Text(
                  "you account",
                  textAlign: TextAlign.left,
                  style: TextStyle(

                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: AppColors.textButtonRegisterLinearLeft,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 10),
                child: Text(
                  "Enter your personal information and"+
                      " you",

                  style: TextStyle(

                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,

                    color: AppColors.textregisterinformation,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 5),
                child: Text(
                  "can start using our application now.",
                  style: TextStyle(

                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,

                    color: AppColors.textregisterinformation,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5,top: 5,right: 5),
                child:Column(
                  children: <Widget>[
                    TextField(
                      cursorColor:AppColors.textButtonRegisterLinearRight ,

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.person,
                          color:AppColors.textButtonRegisterLinearRight,
                          size: 17,
                        ),
                        hintText: 'You email',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        suffixIcon: Icon(
                          Icons.done,
                          color:AppColors.donegreen,
                          size: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18,top: 0,right: 18),
                      child:Container(
                        width: double.infinity,
                        height: 0.7,
                        color: AppColors.borderColor,
                      ),

                    ),
                  ],
                ),
              ),Padding(
                padding: EdgeInsets.only(left: 5,top: 5,right: 5),
                child:Column(
                  children: <Widget>[
                    TextField(
                      cursorColor:AppColors.textButtonRegisterLinearRight ,

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //isDense: true,                      // Added this
                        //contentPadding: EdgeInsets.only(left: ),
                        /* border:UnderlineInputBorder(

                    ) ,*/
                        /*focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: AppColors.borderColor),

                    ),*/
                        prefixIcon: Icon(
                          Icons.lock,
                          color:AppColors.textButtonRegisterLinearRight,
                          size: 17,
                        ),

                        hintText: 'You password',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        suffixIcon: Icon(
                          Icons.done,
                          color:AppColors.donegreen,
                          size: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18,top: 0,right: 18),
                      child:Container(
                        width: double.infinity,
                        height: 0.7,
                        color: AppColors.borderColor,
                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15,left: 20,right: 20),
                child: RaisedButton(
                  onPressed: () {
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(55.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [AppColors.textButtonRegisterLinearLeft,AppColors.textButtonRegisterLinearRight],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(55.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth:double.infinity, minHeight: 50.0),
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        "CREATE ACCOUNT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
                child:Text(
                  "Forgot password?",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textButtonRegisterLinearLeft
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
                child:Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,


                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0,top: 0,right: 0),
                      child:Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        height: 0.7,
                        color: AppColors.borderColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,top: 0,right: 10),
                      child:Text('or')
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0,top: 0,right: 0),
                      child:Container(
                        width:MediaQuery.of(context).size.width/2.5,
                        height: 0.7,
                        color: AppColors.borderColor,
                      ),
                    ),


                  ],
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                child:Text(
                  "Sign up with",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textServicesofTerms
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
                child:Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,


                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 10,top: 0,right: 10),
                        child:SvgPicture.asset(
                            'images/facesvg.svg',
                          width:MediaQuery.of(context).size.width/11,
                            //color: Colors.red,
                            //semanticsLabel: 'A red up arrow'
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10,top: 0,right: 10),
                        child:SvgPicture.asset(
                            'images/twittersvg.svg',
                            width:MediaQuery.of(context).size.width/11,
                            //color: Colors.red,
                            //semanticsLabel: 'A red up arrow'
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10,top: 0,right: 10),
                        child:SvgPicture.asset(
                            'images/googlesvg.svg',
                          width:MediaQuery.of(context).size.width/11,
                            //width: 39,
                            //color: Colors.red,
                            //semanticsLabel: 'A red up arrow'
                        ),
                    ),



                  ],
                ) ,
              ),

              Padding(
                padding: EdgeInsets.only(top: 0),
                child:Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "You have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.textServicesofTerms
                      ),
                    ),
                    Text(
                      " Log in",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.textButtonRegisterLinearLeft
                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
        )
      ),
    );
  }
}
