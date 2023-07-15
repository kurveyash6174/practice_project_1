import 'package:flutter/material.dart';

class ListViewBuilderRow extends StatelessWidget {
  const ListViewBuilderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Listview Row"),
          backgroundColor: Colors.deepOrangeAccent.shade100),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 280),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(5),
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.rectangle,
                color: Colors.grey[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 9, 5, 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        color: Colors.grey[100],
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg'))),
                  ),
                  const Text('user_name')
                ],
              ),
            );
          }),
    );
  }
}
