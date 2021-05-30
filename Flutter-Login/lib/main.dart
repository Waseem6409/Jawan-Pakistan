import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  width: 300,
                  child: TextField(
                    decoration: new InputDecoration(
                        labelText: "Email",
                        labelStyle: new TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[800]),
                        )),
                    cursorColor: Colors.grey,
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Password",
                      labelStyle: new TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[800]),
                      ),
                    ),
                    cursorColor: Colors.grey,
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      elevation: 10),
                  onPressed: () {},
                  child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
