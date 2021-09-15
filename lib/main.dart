import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// test comment
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: _height,
            width: _width,
            color: Colors.deepPurple,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Apbar section start
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, color: Colors.white, size: 32),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 24,
                            backgroundImage: AssetImage("assets/dog.png"),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 30),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hi, Cherry!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "6 Text are pending",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    //card
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 15,
                      color: Colors.deepPurple[300],
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: _width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile App Design",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Shefu dada",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 24,
                                          backgroundImage:
                                              AssetImage("assets/dog.png"),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 24,
                                          backgroundImage:
                                              AssetImage("assets/dog.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.done_outline,
                                    size: 26,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(15.0),
                      // ),
                      // shadowColor: Colors.white,
                      // color: Colors.deepPurple[300],
                      // child: Container(
                      //   width: _width,
                      //   child: Column(
                      //     children: [
                      //       Text(
                      //         "Design here",
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         "Design here",
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Row(
                      //             children: [
                      //               CircleAvatar(),
                      //               CircleAvatar(),
                      //             ],
                      //           ),
                      //           Text("Text")
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Monthly Reviews",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.teal,
                            radius: 20,
                            child: Icon(
                              Icons.reviews,
                              color: Colors.white,
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 15,
                      color: Colors.deepPurple[300],
                      child: Container(
                        width: _width / 3,
                        height: 500,
                      ),
                    )
                  ],
                ),
              ),
            )),
        //bottomNavigationBar: BottomNavigationBar(items: Row(children:[Icons.access_alarm]),
      ),
    );
  }
}
