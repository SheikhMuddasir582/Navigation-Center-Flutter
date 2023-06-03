import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_three.dart';
import 'package:navigation_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Center'),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
          //DrawerHeader(child: Text('Sheikh Muddasir')
          //),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/salaar1.jpg'),
                ),
                //currentAccountPicture: Image(image: AssetImage('assets/salaar.jpg'),),
                accountName: Text('Sheikh Muddasir'),
                accountEmail: Text('123@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page 1'),
              onTap: ()
              {
                Navigator.pushNamed(context, HomeScreen.id);

              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page 2'),
              onTap: ()
              {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page 3'),
              onTap: ()
              {
                Navigator.pushNamed(context, ScreenThree.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: ()
              {
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => ScreenTwo() )
                // );
              },
              child: Text('Screen 1'),
            ),
          )
        ],
      ),
    );
  }
}

//intents moving betwwen screen
// Scaffold(
// appBar: AppBar(
// title: Text('Navigation Center'),
// backgroundColor: Color(0xff764abc),
// ),
// body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Center(
// child: TextButton(
// onPressed: ()
// {
// Navigator.push(
// context, MaterialPageRoute(builder: (context) => ScreenTwo() )
// );
// },
// child: Text('Screen 1'),
// ),
// )
// ],
// ),
// );
