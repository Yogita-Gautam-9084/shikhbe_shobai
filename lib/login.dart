import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shikhbe_shobai/continue_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_veiw.dart';
import 'web_view2.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  @override
  bool isHiddenPassword =true;
  void initState(){
    super.initState();
    emailController.addListener(() => setState((){}));
  }

  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        padding:
        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Enter Email ID',
                suffixIcon: emailController.text.isEmpty
                    ?Container(width: 0,):
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () =>emailController.clear(),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textInputAction: TextInputAction.next,
              obscureText: isHiddenPassword,
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Enter Password',
                suffixIcon: InkWell(onTap:_ontogglePasswordView,
                  child: Icon(
                    Icons.visibility,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContinueScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 140, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'or',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/facebookLogo.png',
                        height: 30,
                        width: 40,
                      ),
                      InkWell(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WebView1()));
                      },
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 35, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logoGoogle.png',
                        height: 30,
                        width: 40,
                      ),
                      InkWell(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView2()));
                      },
                        child: Text(
                          'Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _ontogglePasswordView() {
 setState((){
   isHiddenPassword = !isHiddenPassword;
 });
  }
}
