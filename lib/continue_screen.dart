import 'package:flutter/material.dart';
import 'package:shikhbe_shobai/confirm_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Wrap(
                children: [
                  InkWell(onTap:(){
                    Navigator.pop(context);
                  },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Lets Get Started',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Enter Your Mobile Number and enable 2 step verification ')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: CountryCodePicker(
                        onChanged: (e) => print(e.toLongString()),
                        initialSelection: 'bd',
                        showFlag: false,
                        favorite: ['+880', 'BD'],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 1, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                    ),
                    Expanded(
                      child: TextField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter Mobile Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          counterText: '',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ConfirmScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
