import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
     Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            Text('This is the Next page!'),
            SizedBox(height: 20),
            // 戻るボタン
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go Back'),
            ),
          ],
        )
     );
  }
}
