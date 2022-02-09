import 'dart:ui';

import 'package:flutter/material.dart';
import '../dashboard.dart';
import 'districts.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: const Text('Account'),
                  accountEmail: const Text('gmail.com'),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/userlogo.jpg'),
                  ),
                  decoration: BoxDecoration(color: Colors.green[200]),
                ),
              ),
              ListTile(
                title: const Text('Places'),
                onTap: () {
                  //
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Food'),
                onTap: () {
                  //
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Stays'),
                onTap: () {
                  //
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Rent Cars'),
                onTap: () {
                  //
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Enquery'),
                onTap: () {
                  //
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        iconTheme: const IconThemeData(color: Colors.white30),
        title: Row(
          children: const [
            Text(
              'Kerala Tourism',
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashBoard()),
              );
            },
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white30,
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: DistrictsList(),
      ),
    );
  }
}
