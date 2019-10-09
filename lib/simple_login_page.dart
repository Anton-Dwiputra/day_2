import 'package:day_2/page3.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:day_2/page3.dart';

class PageSimplelogin extends StatefulWidget {
  @override
  _PageSimpleloginState createState() => _PageSimpleloginState();
}

class _PageSimpleloginState extends State<PageSimplelogin> {

  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  String nUsername = "", nPassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Simple Login'),
        backgroundColor: Colors.red,
      ),
          body:ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(7.0),
                child: TextFormField(
                  controller: etUsername,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(7.0),
                child: TextFormField(
                  controller: etPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  child: Text('Test'),
                  onTap: (){
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(7.0),
                child: MaterialButton(
                  child: Text('submit'),
                  onPressed: (){
                    setState(() {
                      nUsername = etUsername.text;
                      nPassword = etPassword.text;

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      PageKetiga(username: nUsername, password: nPassword,)));
                    });
                  },
//                    Fluttertoast.showToast(
//                        msg: "Username : = " + etUsername.text + "Password = " + etPassword.text,
//                        toastLength: Toast.LENGTH_SHORT,
//                        gravity: ToastGravity.CENTER,
//                        timeInSecForIos: 1,
//                        backgroundColor: Colors.red,
//                        textColor: Colors.white,
//                        fontSize: 16.0);
//                    print("username :" + etUsername.text);
//                    print("password :" + etPassword.text);
//                  },
                  color: Colors.red,
                  textColor:Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(7.0),
                child: Text('Username anda:'+ etUsername.text),
              ),
              Container(
                margin: EdgeInsets.all(7.0),
                child: Text('Password anda:'+ etPassword.text),
              ),
            ],
          ) ,
    );
  }
}

