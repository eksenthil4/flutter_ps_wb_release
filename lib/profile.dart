import 'package:flutter/material.dart';
import 'nav_bar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Developer Profile'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/lotus_images.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Kavitha Chidambaram',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20.0,
                  width: 250.0,
                  child: Divider(
                    color: Colors.teal.shade50,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91 8610338291',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Poppins',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'chidambaram.kavitha@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
