import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var style;

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 30),
                )),
            Container(
              padding: EdgeInsets.all(30),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email address',
                ),
              ),
            ),
            
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Color.fromRGBO(241, 172, 38, 1),
                  child: Text('Login'),
                  onPressed: () {
                    var nameController;
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            SizedBox(height: 20.0),
            Container(
              height: 40.0,
              color: Colors.blue,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1.0),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  // ignore: deprecated_member_use
                  FlatButton(
                    textColor: Color.fromRGBO(241, 172, 38, 1),
                    child: Column(
                      children: [
                        Text("Sign Up"),
                        Row(
                          children: [
                            buildTextButton(MaterialCommunityIcons.facebook, "Facebook", Palette.facebookColor),
                          ],)
                      ],
                      
                    ),
                    onPressed: () {
                      //signup screen
                    },

                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
             
              ),
              
            ),
          ],
        ),
      ),
    );
  }

    TextButton newMethod(IconData icon, String title, Color backgroundColor) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        side: BorderSide(width: 1, color: Colors.grey),
        minimumSize: Size(155, 40),
        shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20)),
            primary: Colors.white,
            backgroundColor: Palette.facebookColor
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                ),
                SizeBox(
                  width: 5,
                ),
                Text(
                  title,
                )
              ],
            ),
            );
  }

  buildTextButton(IconData? facebook, String s, facebookColor) {}
}

// ignore: non_constant_identifier_names
SizeBox({required int width}) {}

class MaterialCommunityIcons {
  static IconData? facebook;
}

class Palette {
  static var facebookColor;
}
