import 'package:flutter/material.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';
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
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.grey.shade200),
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://media.licdn.com/dms/image/D4D03AQEFAkEJ56Bzlg/profile-displayphoto-shrink_800_800/0/1668710234384?e=2147483647&v=beta&t=50qsokisEej8cpHeEX3tb5Adr3uCO6NjAnm26hHeKhc'))),
          ),
          const Text(
            'Yash Kurve',
            style: TextStyle(fontSize: 24, height: 2),
          ),
          Expanded(
            child: Center(
              child: Container(
                color: Colors.grey[100],
                child: const Text( 'This Container is expanded to the Profile & Button'),
              ),
            ),
          ),
          NeoPopTiltedButton(
            isFloating: true,
            onTapUp: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListViewBuilderRow()));
            },
            decoration: const NeoPopTiltedButtonDecoration(
              color: Colors.lightGreen,
              plunkColor: Colors.lightGreen,
              shadowColor: Color.fromRGBO(36, 36, 36, 1),
              showShimmer: true,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70.0,
                vertical: 15,
              ),
              child: Text('Row'),
            ),
          ),
          NeoPopTiltedButton(
            isFloating: true,
            onTapUp: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListViewBuilderColumn()));
            },
            decoration: const NeoPopTiltedButtonDecoration(
              color: Color.fromRGBO(255, 235, 52, 1),
              plunkColor: Color.fromRGBO(255, 235, 52, 1),
              shadowColor: Color.fromRGBO(36, 36, 36, 1),
              showShimmer: true,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70.0,
                vertical: 15,
              ),
              child: Text('Column'),
            ),
          ),
          SizedBox(
            height: 10,
          )
          // MaterialButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const ListViewBuilderRow()));
          //   },
          //   color: Colors.greenAccent,
          //   child: const Text('Row'),
          // ),
          // MaterialButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const ListViewBuilderColumn()));
          //   },
          //   color: Colors.greenAccent,
          //   child: const Text('Coloumn'),
          // ),
        ],
      ),
    );
  }
}
