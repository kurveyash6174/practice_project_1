import 'package:flutter/material.dart';
import 'package:practice_project_1/first_screen.dart';
import 'package:practice_project_1/second_screen.dart';

/// Flutter code sample for [Expanded].

void main() => runApp(const ExpandedApp());

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Example'),centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent.shade100,
        ),
        body: const ExpandedExample(),
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.grey.shade200),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.licdn.com/dms/image/D4D03AQEFAkEJ56Bzlg/profile-displayphoto-shrink_800_800/0/1668710234384?e=2147483647&v=beta&t=50qsokisEej8cpHeEX3tb5Adr3uCO6NjAnm26hHeKhc'))),
          ),
          Text(
            'Yash Kurve',
            style: TextStyle(fontSize: 24, height: 2),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: Text( 'This Container is expanded to the Profile & Button'),
                color: Colors.grey[100],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewBuilderRow()));
            },
            color: Colors.greenAccent,
            child: Text('Row'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewBuilderColumn()));
            },
            color: Colors.greenAccent,
            child: Text('Coloumn'),
          ),
        ],
      ),
    );
  }
}
