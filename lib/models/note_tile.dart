import 'package:flutter/material.dart';
import 'dart:math';

import '../utils/note.dart';

class NoteTile extends StatelessWidget {
  final Note note;
  const NoteTile({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(note.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      softWrap: false),
                ),
                 const CircleAvatar(radius: 15.0),
              ],
            ),
            subtitle: SizedBox(
              height: 80.0,
              child: Text(note.content, style: const TextStyle(fontSize: 8.0), overflow: TextOverflow.fade),
            ),
          ),
        ),
      ),
    );
  }
}
