import 'package:flutter/material.dart';

import 'display_text.dart';
import 'indicator.dart';
import 'nav_bar.dart';
import 'quotes_list.dart';

class WBQuotesText extends StatefulWidget {
  const WBQuotesText({Key? key}) : super(key: key);

  @override
  State<WBQuotesText> createState() => _WBQuotesTextState();
}

class _WBQuotesTextState extends State<WBQuotesText> {
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
            margin: EdgeInsets.symmetric(vertical: 50.0),
            height: 200.0,
            child: PageView.builder(
              // Selection - click listener
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                // total length
                itemCount: quotesList.length,
                // Display quotes
                itemBuilder: (context, index) {
                  var quotes = quotesList[index];
                  var _scale = _selectedIndex == index ? 1.0 : 0.8;

                  return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: Duration(milliseconds: 350),
                      child: DisplayText(
                        appData: quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: new Text(
                  (_selectedIndex + 1).toString() + '/' + quotesList.length.toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

/*
...List.generate(
    quotesList.length,
        (index) => Indicator(
        isActive: _selectedIndex == index ? true : false))
 */