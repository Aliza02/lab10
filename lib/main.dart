import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart'; Unused Dependency
import 'package:url_launcher/url_launcher.dart';

// app build process is triggered here
void main() => runApp(const MyApp());

_sendingMails() async {
  String subject = 'dkjaskdjakjda';
  String body = 'This is body';
  String email = 'abc@gmail.com';
  var url = Uri.parse("mailto:$email?subject=$subject&body=$body");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_sendingSMS() async {
  var url = Uri.parse("sms:966738292");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //String body =
    //  "Hello, hope you are doing well, these are the changes to be made";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Course: Mobile Application Development'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 200.0,
                ),
                const Text(
                  'Contact Us!',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                const Text(
                  'For any changes , kindly direct email us at',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: _sendingMails,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Here'),
                ), // ElevatedButton

                Container(
                  height: 20.0,
                ),
                const Text(
                  'Or Send SMS',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: _sendingSMS,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Here'),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
