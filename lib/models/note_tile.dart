import 'package:flutter/material.dart';

import '../utils/note.dart';

class NoteTile extends StatelessWidget {
  final Note note;
  const NoteTile({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // style: ListTileStyle(

      // ),
      isThreeLine: true,
      title: Row(
        children: [
          const CircleAvatar(),
          Text(note.title),
        ],
      ),
      subtitle: Text(note.content),
    );
  }
}
