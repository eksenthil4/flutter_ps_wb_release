import 'package:flutter/material.dart';
import 'display_image.dart';
import 'indicator.dart';
import 'nav_bar.dart';
import 'quotes_image_list.dart';
import 'quotes_list.dart';

class WBQuotesImage extends StatefulWidget {
  const WBQuotesImage({Key? key}) : super(key: key);

  @override
  State<WBQuotesImage> createState() => _WBQuotesImageState();
}

class _WBQuotesImageState extends State<WBQuotesImage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Warren Buffett Quotes'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 400,
            width: 600,
            /*decoration: BoxDecoration(
              //color: Colors.teal,
            ),*/
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataImage.length,
              itemBuilder: (context, index) {
                return DisplayImage(
                  appData: appDataImage[index],
                );
              },),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataImage.length,
                        (index) => Indicator(
                        isActive: _selectedIndex == index ? true : false))
              ],
            ),
          )
        ],
      ),
    );
  }
}