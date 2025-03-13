import 'package:flutter/material.dart';

class SuggestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suggestions"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Here are your suggestions!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
