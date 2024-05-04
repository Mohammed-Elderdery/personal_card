// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';


void main() => runApp(MyCard());

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 50.0,
                backgroundImage: AssetImage('images/FB profile.png'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Mohammed Elderdery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'مبرمج تطبيقات الجوالات',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 20,
                      child: Divider(color: Colors.cyan[100]),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.cyan[700],
                  ),
                  title: Text(
                    '+201010342656',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.cyan[700],
                  ),
                  title: Text(
                    'Wiz0917204662@gmail.com',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: Text(
                  'Options',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.alarm),
              ),
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.email_rounded),
              ),
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.message_outlined),
              ),
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.camera),
              ),
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.phone),
              ),
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.watch),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void calculate(){
    print('Enter Your Standard dose ');
  double standerd_Dose = double.parse(stdin.readLineSync()!);
  print('Enter age in years');
  double Age = double.parse(stdin.readLineSync()!);
  

  double weight = (Age * 2) + 8;

  double Dose = (weight * standerd_Dose) ;

  print('your weight is $weight');
  print('your Dose is $Dose mg');
}


 // title: Text(
          //   'Contact US',
          //   style: TextStyle(
          //       fontSize: 30.0,
          //       fontWeight: FontWeight.bold,
          //       fontStyle: FontStyle.italic,
          //       color: Colors.yellow[700]),
          // ),
          // centerTitle: true,