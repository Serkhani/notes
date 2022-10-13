import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../models/note_tile.dart';
import '../utils/note.dart';

class MyHomePage extends GetView<HomePageCon> {
  const MyHomePage({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 100.0,
            elevation: 0.0,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Text("x notes"), //x should be the length of the list of notes
              title: Text("N O T E S"),
              centerTitle: false,
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              shrinkWrap: true,
              itemCount: 9,
              itemBuilder: (context, index) {
                return NoteTile(
                  note: Note(
                      title: "title of the note that is to be read",
                      imageUrl: "imageUrl",
                      content:
                          "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense.It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces that will subsequently be occupied from ad hoc texts composed by communication professionals.It is certainly the most famous placeholder text even if there are different versions distinguishable from the order in which the Latin words are repeated."),
                );
              },
            ),

            // return const CircularProgressIndicator();
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        heroTag: "addNote",
        child: const Icon(Icons.note_add_outlined),
      ),
    );
  }
}
