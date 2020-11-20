import 'package:Susu_Messenger/services/auth.dart';
import 'package:Susu_Messenger/shares/loading.dart';
import 'package:Susu_Messenger/themes/hexColor.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final AuthService _auth = AuthService();
  bool loading = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              width: double.infinity,
              // height: height,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // color: Colors.red,
                    padding: EdgeInsets.all(
                      25.0,
                    ),
                    width: double.infinity,
                    // height: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () async {
                        setState(() {
                          loading = true;
                        });
                        await _auth.signOut();
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
                        'Sign Out',
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
          );
  }
}
