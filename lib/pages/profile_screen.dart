import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _fruitAddctl = TextEditingController();
  List fruitList = [];
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
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  print(fruitList);
                },
                child: Text("Show List")),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _fruitAddctl,
              decoration: InputDecoration(labelText: "data", hintText: "Easy"),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fruitList.add(_fruitAddctl.text);
                    });
                    print(fruitList);
                    _fruitAddctl.clear();
                  },
                  child: Text("Add Fruit")),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: fruitList.length,
              itemBuilder: (buildContext, index) {
                return Card(
                  color: Colors.deepPurpleAccent[100],
                  elevation: 6,
                  child: Center(
                    child: Container(
                      child: Center(
                          child: Text(
                        fruitList[index],
                        style: TextStyle(fontSize: 28),
                      )),
                    ),
                  ),
                );
              },
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            )
          ],
        ),
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
