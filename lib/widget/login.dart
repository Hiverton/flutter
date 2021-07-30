import 'package:flutter/material.dart';

import './home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding (
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                          email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder()
                          ),
                        ),
                        Container(height: 10),
                        TextField(
                          onChanged: (text) {
                          password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 15),
                        RaisedButton(
                          child: Container(
                            width: double.infinity,
                            child: Text('Entrar', textAlign: TextAlign.center,),
                
                          ), 
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: (){
                            if(email == 'hiverton.alves@gmail.com' && password == '123'){
                              Navigator.of(context).pushReplacementNamed('/home');
                            } else {
                              print('incorreto');
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
                
              ]
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'images/logo.jpg',
              fit:BoxFit.cover
            ),
            
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          this._body()
        ],
      ),
    );
  }
}