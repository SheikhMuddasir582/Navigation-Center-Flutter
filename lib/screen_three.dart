import 'package:flutter/material.dart';
class ScreenThree extends StatefulWidget {
  static const String id= 'screen_three';
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Center'),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: ()
              {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => ScreenTwo() )
                // );
              },
              child: Text('Screen 3'),
            ),
          )
        ],
      ),
    );;
  }
}
