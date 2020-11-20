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
  String email = '';
  String password = '';
  String error = '';
  bool checkBoxValue = false;
  //

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              // leading: IconButton(
              //   icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              //   //onPressed: () => widget.toggleView()
              //   // onPressed: () => Navigator.pop(context),
              // ),
            ),
            backgroundColor: Colors.white,
            body: Container(
              //alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                //physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 30,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '이메일',
                          style: TextStyle(
                            fontSize: 36,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '로그인',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: '이메일 입력',
                            hintStyle: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 20,
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
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: '비밀번호 입력',
                            hintStyle: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 20,
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
                      Container(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            '아이디/비밀번호 찾기',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
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
                                  builder: (context) => Successful(),
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
                          color: HexColor('#53BDF9'),
                          child: Text(
                            '로그인',
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
                            setState(() {
                              loading = true;
                            });
                            await _auth.signAnonymously();
                            setState(() {
                              loading = false;
                            });
                          },
                          padding: EdgeInsets.all(12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: HexColor('#53BDF9'),
                          child: Text(
                            'Sign In Anonymously',
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
