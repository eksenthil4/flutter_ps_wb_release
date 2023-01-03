import 'package:flutter/material.dart';
import 'quotes_list.dart';

class DisplayText extends StatelessWidget {
  final QuotesList appData;

  const DisplayText({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
          style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  // set text
                  appData.quotes,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
