import 'package:Susu_Messenger/screens/authenticate/sign_up.dart';
import 'package:Susu_Messenger/screens/successful/successful.dart';
import 'package:Susu_Messenger/services/auth.dart';
import 'package:Susu_Messenger/shares/loading.dart';
import 'package:Susu_Messenger/themes/hexColor.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  bool loading = false;

  // text field state
  String email;
  String password;
  String error = '';
  bool checkBoxValue = false;
  //

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Color(0xFF2980b9),
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Center(
                            child: Text(
                              "SUSU Messenger",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Center(
                            child: Text(
                              "We would like to bring your university into your hands",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  width: double.infinity,
                  transform: Matrix4.translationValues(0, 250, 1),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 40, bottom: 30),
                          child: Text(
                            "Login to Continue",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.symmetric(vertical: 5.0),
                          padding: EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 15),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // labelText: "Email",
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                              ),
                            ),
                            validator: (val) =>
                                val.isEmpty || !val.contains('@')
                                    ? 'Enter a valid email'
                                    : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 15),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Passwords',
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
                        SizedBox(height: 3),
                        Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
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
                                setState(() {
                                  loading = true;
                                });

                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                        email: email, password: password);

                                if (!result) {
                                  setState(() {
                                    loading = false;
                                  });
                                }

                                await _auth.signInWithEmailAndPassword(
                                    email: email, password: password);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => Successful(),
                                //   ),
                                // );
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
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                //letterSpacing: 1.5,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                            padding: EdgeInsets.all(12.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Color(0xFF2980b9),
                            child: Text(
                              'Register a account',
                              style: TextStyle(
                                color: Colors.white,
                                //letterSpacing: 1.5,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
