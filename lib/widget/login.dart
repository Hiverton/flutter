import 'package:flutter/material.dart';

import './home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding (
          padding: const EdgeInsets.all(8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://portalcomercial.somoseducacao.com.br/assets/images/grupo_somos_logo_branco.png'),
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
            RaisedButton(
              child: Text('Entrar'), 
              onPressed: (){
                if(email == 'hiverton.alves@gmail.com' && password == '123'){
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  print('incorreto');
                }
              },
            )
          ]
        ),
      )),
    );
  }
}