import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: _height,
        width: _width,
        color: Colors.deepPurple[300],
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print("Nevigate to next screen");
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("AppBar Title"),
      ),
    ));
  }
}
