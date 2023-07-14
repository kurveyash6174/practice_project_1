import 'package:flutter/material.dart';

class ListViewBuilderColumn extends StatelessWidget {
  const ListViewBuilderColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Listview Column"),
          backgroundColor: Colors.deepOrangeAccent.shade100),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.rectangle,
                color: Colors.grey[100],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 9, 5, 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        color: Colors.grey[100],
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg'))),
                  ),
                  Text('user_name')
                ],
              ),
            );
          }),
    );
  }
}
