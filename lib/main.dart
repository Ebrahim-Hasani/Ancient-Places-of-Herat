import 'package:flutter/material.dart';
import 'secondpart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("اماکن تاریخی"),
      // ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              height: 66,
              width: 196,
              child: Center(
                  child: Text(
                "اماکن تاریخی",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              )),
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(
                  color: Colors.cyan,
                ),
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20), bottom: Radius.circular(20)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.elliptical(15, 20),
                    left: Radius.elliptical(15, 20)),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    "قلعه اختیار الدین",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.elliptical(15, 20),
                    left: Radius.elliptical(15, 20)),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    " مسجد جامع بزرگ هرات",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.elliptical(15, 20),
                    left: Radius.elliptical(15, 20)),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    "منار های تاریخی هرات",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.elliptical(15, 20),
                    left: Radius.elliptical(15, 20)),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    "مقبره خواجه عبدالله انصاری",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}
