
import 'package:flutter/material.dart';

import '../controller/app_controller.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  bool isDartTheme = false;
  int counter  = 0;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView (
          children: [
            CustomContainer(counter: '$counter'),
            CustomContainer(counter: '$counter'),
            CustomContainer(counter: '$counter'),
            CustomContainer(counter: '$counter'),
            CustomContainer(counter: '$counter')],
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        })

    );

  }

}

class CustomContainer extends StatelessWidget {
  
  final String counter;

  CustomContainer({Key? key, required this.counter}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
              margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 2.5, top: 2.5),
              child: Center(
                child:Text(
                  '$counter',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ),
              width: 50,
              height: 30,
              color: Colors.blue,
            );
    }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch (
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      }
    );
  }
}