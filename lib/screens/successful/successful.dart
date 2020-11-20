import 'package:flutter/material.dart';

class Successful extends StatefulWidget {
  @override
  _SuccessfulState createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          //onPressed: () => widget.toggleView()
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          'Successfull',
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
