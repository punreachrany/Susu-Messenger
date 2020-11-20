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
  String email = '';
  String password = '';
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
                      '이메일',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '회원가입',
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
                    padding: EdgeInsets.symmetric(vertical: 5.0),
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
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '비밀번호 확인',
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                        ),
                      ),
                      validator: (val) =>
                          val != password ? 'Passwords don\'t match!' : null,
                      obscureText: true,
                    ),
                  ),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            alignment: Alignment.centerLeft,
                            child: Checkbox(
                              value: checkBoxValue,
                              activeColor: HexColor('#53BDF9'),
                              //tristate: true,
                              onChanged: (bool newValue) {
                                setState(() {
                                  checkBoxValue = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 18,
                          //padding: const EdgeInsets.all(8.0),
                          child: Text(
                            //'hhahaha',
                            '회원가입 시 이용약과, 개인정보처리방침, 위치기반 서비스 이용약관에 동의합니다.',
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.justify,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
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
                              builder: (context) => SignUpInfo(),
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
                        '다음 (1/2)',
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
