import 'package:Susu_Messenger/screens/home/home_wrapper.dart';
import 'package:Susu_Messenger/services/auth.dart';
import 'package:Susu_Messenger/shares/loading.dart';
import 'package:Susu_Messenger/themes/hexColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpInfo extends StatefulWidget {
  String email, password;

  SignUpInfo({@required this.email, @required this.password});

  @override
  _SignUpInfoState createState() => _SignUpInfoState(email, password);
}

class _SignUpInfoState extends State<SignUpInfo> {
  String email, password;
  _SignUpInfoState(this.email, this.password);
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  DateTime pickedDate;

  final AuthService _auth = AuthService();

  @override
  void initState() {
    super.initState();
    // pickedDate = DateTime.now();
  }

  // text field state
  String name;
  String gender;
  String university;
  String error = '';
  bool checkBoxValue = false;

  //
  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: pickedDate != null ? pickedDate : DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2050),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );

    setState(() {
      pickedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 18,
                                  ),
                                ),
                                validator: (val) =>
                                    val.isEmpty ? 'Input Your Name' : null,
                                onChanged: (val) {
                                  setState(() => name = val);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Gender",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Gender',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 18,
                                  ),
                                ),
                                validator: (val) =>
                                    val.isEmpty ? 'Input Your Gender' : null,
                                onChanged: (val) {
                                  setState(() => gender = val);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, bottom: 5.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Birthday",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 5,
                                child: InkWell(
                                  onTap: _pickDate,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      pickedDate != null
                                          ? Text(
                                              "${pickedDate.year}. ${pickedDate.month}. ${pickedDate.day}",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            )
                                          : Text(
                                              "YYYY. MM. DD",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 18,
                                              ),
                                            ),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text(
                                "University",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'University',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 18,
                                  ),
                                ),
                                validator: (val) => val.isEmpty
                                    ? 'Input Your University'
                                    : null,
                                onChanged: (val) {
                                  setState(() => university = val);
                                },
                              ),
                            ),
                          ],
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
                            if (_formKey.currentState.validate() &&
                                pickedDate != null &&
                                checkBoxValue != false) {
                              setState(() {
                                loading = true;
                              });
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                email: email,
                                password: password,
                                name: name,
                                gender: gender,
                                birthday: pickedDate,
                                university: university,
                              );

                              if (result) {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              } else {
                                setState(() {
                                  loading = false;
                                });
                                Navigator.pop(context);
                              }
                            } else {
                              error =
                                  'Validation Failed: Please put the right information.';
                              print(error);
                            }
                          },
                          padding: EdgeInsets.all(12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: HexColor('#53BDF9'),
                          child: Text(
                            '가입완료 (2/2)',
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
