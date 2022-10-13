import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../models/note_tile.dart';

class MyHomePage extends GetView<HomePageCon> {
  const MyHomePage({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            elevation: 0.0,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Obx(() => Text(
                  '${controller.notes.length} notes')), //x should be the length of the list of notes
              title: const Text("N O T E S"),
              centerTitle: false,
            ),
          ),
          SliverToBoxAdapter(
            child: controller.notes.isNotEmpty
                ? Obx(
                    () => GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      shrinkWrap: true,
                      itemCount: controller.notes.length,
                      itemBuilder: (context, index) {
                        return NoteTile(note: controller.notes[index]);
                      },
                    ),
                  )
                : SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const Center(
                      child: Text(
                        "No notes",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.showDialog();
        },
        heroTag: "addNote",
        child: const Icon(Icons.note_add_outlined),
      ),
    );
  }
}
