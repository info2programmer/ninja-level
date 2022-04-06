import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home : Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Welcome Ninja"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel++;
          });
        },
        child: const Icon(
          Icons.add
        ),
        backgroundColor: Colors.grey[700],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 3.0,
                fontSize: 20.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Saikat Bhadury",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.0,
                  fontSize: 26.0
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Ninja Level",
              style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 3.0,
                  fontSize: 20.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.0,
                  fontSize: 26.0
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                    "info2programmer@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 2.0
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


