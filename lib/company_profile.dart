import 'package:flutter/material.dart';

import 'nav_bar.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Company Profile'),
        backgroundColor: Colors.red[900],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(80), // Image radius
                  child: Image.asset('images/tidy_logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tidy Life India Pvt Ltd',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30.0,
                      color: Colors.red[900],
                     // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 250.0,
                child: Divider(
                  color: Colors.red[900],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red[900],
                  ),
                  title: Text(
                    '+91 8610338291',
                    style: TextStyle(
                        color: Colors.red[900],
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
                      color: Colors.red[900],
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                        color: Colors.red[900],
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                      ),
                    )),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.web_asset_rounded,
                      color: Colors.red[900],
                    ),
                    title: Text(
                      'www.tidylifeindia.com',
                      style: TextStyle(
                        color: Colors.red[900],
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
