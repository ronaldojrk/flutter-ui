import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uilogin/core/AppColors.dart';
import 'package:uilogin/register.dart';
import 'package:flutter/services.dart';

class home extends StatefulWidget {

  @override
  _homeState createState() => _homeState();

}

class _homeState extends State<home> {


  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.textButtonLoginLinearLeft, AppColors.textButtonLoginLinearRight],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      body: Container(
        //padding: EdgeInsets.all(32),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5, 30, 5, 10),
              child:SvgPicture.asset(
                'images/homesvg.svg',
                height:MediaQuery.of(context).size.height/1.5,

              ),

              decoration: BoxDecoration(
                color: AppColors.bgcolorImg,
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(45),
                  bottomRight: Radius.circular(45),

                )
                //border: Border.all( width: 5, color: Colors.black),
              ),
            ),
           Padding(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => register()
                      ),
                  );

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
                    alignment: Alignment.center,
                    height: 54,
                    child: Text(
                      "REGISTRATION",
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
              padding: EdgeInsets.only(top:10,left: 20,right: 20,bottom: 15),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55.0),

                ),
                padding: EdgeInsets.all(0.0),
                child: Ink(

                  decoration: BoxDecoration(
                      border:Border.all(

                        color: AppColors.textButtonLoginLinearRight,
                          width: 2.0
                      ),

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55.0)
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth:double.infinity, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "LOGIN NOW",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          foreground: Paint()..shader = linearGradient
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Text(
              "Services of Terms",
              textAlign: TextAlign.center,
              style: TextStyle(

                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.textServicesofTerms
              ),
            ),
          ],
        ),
      ),
    );
  }
}
