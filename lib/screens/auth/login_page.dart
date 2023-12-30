import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ecommerce_int2/firebase_options.dart';

class LoginPage extends StatefulWidget
{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
{
@override
  void initState() {
    initialize();
    super.initState();
  }

Future initialize () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

@override
Widget build(BuildContext context) {

  Widget displayMessage = Container(
      width: 350, // Makes the container take the full width
      color: Colors.black,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10), // Adjusts the padding
      child: Text(
        'Please read and agree to our terms and conditions. There will be a lot of more statements here. Should be made configurable',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12, // Adjusts the font size
        ),
      ));

  Widget adSpace = Container(
    width : 350,
    height : 200,
    decoration: BoxDecoration(
      color: Colors.black45,
      borderRadius : BorderRadius.circular(10),
      boxShadow: [BoxShadow(
        color: Colors.black.withOpacity(0.3), // Shadow color with opacity
        spreadRadius: 5, // Spread radius
        blurRadius: 7, // Blur radius
        offset: Offset(0, 3), // Shadow position
      ),],
    ),
    alignment: Alignment.center,
  );

  Widget iconBracket = Container(
      width: 350, // Makes the container take the full width
      decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius : BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.3), // Shadow color with opacity
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Shadow position
          ),],
      ),
      //color: Colors.black26,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10), // Adjusts the padding
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.account_circle_outlined,
                color: Colors.pink,
                size: 30.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),

              Text('Login',
                  style: TextStyle(fontSize: 16, color: Colors.white,)),
            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.app_registration_sharp,
                color: Colors.pink,
                size: 30.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),

              Text('Register',
                  style: TextStyle(fontSize: 16, color: Colors.white,)),
            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.bubble_chart_outlined,
                color: Colors.pink,
                size: 30.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Text('More',
                  style: TextStyle(fontSize: 16, color: Colors.white,)),
            ],
          ),


        ],
      ));

  Widget welcomeText = Text(
    'Welcome to the world of party',
    style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            offset: Offset(0, 5),
            blurRadius: 10.0,
          )
        ]),
  );

  Widget subTitle = Padding(
      padding: const EdgeInsets.only(right: 56.0),
      child: Text(
        'Login for another round of fun! Salud!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ));

  Widget loginIcon = Padding(
      padding: const EdgeInsets.only(right: 56.0),
      child: Icon(Icons.login_rounded, size : 50),
      );

  Widget registerIcon = Padding(
      padding: const EdgeInsets.only(right: 56.0),
      child: Icon(Icons.app_registration_sharp, size : 50),
  );

  return Scaffold(

    body: Stack(
      children: <Widget>[

        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/barscene1.jpg'),
                  fit: BoxFit.cover)
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white24,
            backgroundBlendMode: BlendMode.hardLight,

          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top : 50),
                child: displayMessage
              ),

              Padding(
                  padding: EdgeInsets.only(top : 350),
                  child: welcomeText
              ),

              Padding(
                  padding: EdgeInsets.only(top : 5),
                  child: subTitle
              ),

              Padding(
                  padding: EdgeInsets.only(top : 10),
                  child: iconBracket
              ),

              Padding(
                  padding: EdgeInsets.only(top : 10),
                  child: adSpace
              ),

            ],
          ),
        )
      ],
    ),
  );
}
}
