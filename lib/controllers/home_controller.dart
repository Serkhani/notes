import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/dialog.dart';
import '../utils/note.dart';

class HomePageCon extends GetxController {
  RxList<Note> notes = <Note>[].obs;
  late TextEditingController titleCon;
  late TextEditingController contentCon;

// "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense.It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces that will subsequently be occupied from ad hoc texts composed by communication professionals.It is certainly the most famous placeholder text even if there are different versions distinguishable from the order in which the Latin words are repeated."

  @override
  void onInit() {
    titleCon = TextEditingController();
    contentCon = TextEditingController();
    super.onInit();
  }

  void addNote() {
    if ((titleCon.value.text.isNotEmpty) & (contentCon.value.text.isNotEmpty)) {
      notes.add(Note(
          title: titleCon.value.text,
          imageUrl: "imageUrl",
          content: contentCon.value.text));
      // add to firebase
      titleCon.clear();
      contentCon.clear();
      update();
      Get.back();
    } else {
      Get.snackbar("Error", "Missing some values", backgroundColor: Colors.red.withOpacity(0.25),);
    }
  }

  void showDialog() {
    Get.dialog(const NoteDialog());
  }

  @override
  void dispose() {
    titleCon.dispose();
    contentCon.dispose();
    super.dispose();
  }
}
