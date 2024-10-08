import 'package:flutter/material.dart';
import './userDetails.dart';
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as userDetails;
    final name = args.name;
    final phone = args.phone;
    final email = args.email;
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('$email'),
            SizedBox(
              height: 20,
            ),
            Text('Phone - $phone'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: ()async {
          print('clicked');
          final _url = 'tel:$phone';
          throw 'Could not launch $_url';
        },
      ),
    );
  }
}
