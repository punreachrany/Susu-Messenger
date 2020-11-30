import 'package:Susu_Messenger/screens/authenticate/sign_up_info.dart';
import 'package:Susu_Messenger/shares/loading.dart';
import 'package:Susu_Messenger/themes/hexColor.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email;
  String password;
  String error = '';
  bool checkBoxValue = false;
  //

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Loading();
    } else {
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
        backgroundColor: Colors.white,
        body: Container(
          //alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 30,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Registration',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300], width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Input your email',
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      validator: (val) => val.isEmpty || !val.contains('@')
                          ? 'Enter a valid email'
                          : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300], width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Input your password',
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      validator: (val) => val.length < 6
                          ? 'Enter a password 6+char long'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300], width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Input your password again',
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      validator: (val) =>
                          val != password ? 'Passwords don\'t match!' : null,
                      obscureText: true,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 25.0,
                    ),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SignUpInfo(email: email, password: password),
                            ),
                          );
                        } else {
                          error =
                              'Validation Failed: Please put the right information.';
                        }
                      },
                      padding: EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color(0xFF2980b9),
                      child: Text(
                        'Next (1/2)',
                        style: TextStyle(
                          color: Colors.white,
                          //letterSpacing: 1.5,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
