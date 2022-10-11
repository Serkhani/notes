import 'package:flutter/material.dart';
import '../models/note_tile.dart';
import '../utils/note.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            elevation: 0.0,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Text("x notes"),
              title: Text("N O T E S"),
              centerTitle: false,
            ),
          ),
          SliverToBoxAdapter(
            child: StreamBuilder(
              stream: Stream.periodic(
                const Duration(seconds: 1), (computationCount) {
                  return Note(
                      title: "title",
                      imageUrl: "imageUrl",
                      content: "content");
                },
              ).take(8),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    // itemCount: ,
                    itemBuilder: (context, index) {
                      return NoteTile(note: snapshot.data!);
                    },
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}
