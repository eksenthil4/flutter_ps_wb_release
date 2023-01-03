import 'package:flutter/material.dart';
import 'company_profile.dart';
import 'profile.dart';
import 'wb_quotes_image.dart';
import 'wb_quotes_text.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Warren Buffet Quotes',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            accountEmail: const Text(
              'Version 1.0',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/wb_image.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/background_image.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: const Text('Quotes'),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => WBQuotesText())),
          ),
          ListTile(
            title: const Text('Quotes Image'),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => WBQuotesImage())),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => Profile())),
          ),
          ListTile(
            title: Text('Company Profile'),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => CompanyProfile())),
          ),
        ],
      ),
    );
  }
}
