import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Credit Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Awesome Credit Card Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OTPTextField(
          length: 6,
          width: MediaQuery.of(context).size.width * 0.7,
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldWidth:30,
          fieldStyle: FieldStyle.box,
          style: TextStyle(
            fontSize: 10
          ),
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
      ),
    );
  }
}