import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_three.dart';
class ScreenTwo extends StatefulWidget {
  static const String id= 'screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
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
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index)
            {
              return  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/salaar1.jpg'),
                ),
                //Icon(Icons.home),
                title: Text('Sheikh Muddasir'),
                onTap: ()
                {
                  Navigator.pushNamed(context, ScreenThree.id);
                },
              );
            }),
          )
        ],
      ),
    );
  }
}

