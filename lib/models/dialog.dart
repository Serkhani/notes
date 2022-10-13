import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'inputfield.dart';

class NoteDialog extends GetView<HomePageCon> {
  const NoteDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "addNote",
      child: Dialog(
        insetAnimationDuration: const Duration(milliseconds: 500),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 8.0,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Create Note",
                      style: Theme.of(context).textTheme.titleLarge),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.addNote();
                          },
                          icon: const Icon(Icons.check)),
                      IconButton(
                          onPressed: () {
                            controller.titleCon.clear();
                            controller.contentCon.clear();
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close_rounded)),
                    ],
                  )
                ],
              ),
              InputField(
                controller: controller.titleCon,
                maxLines: 1,
                label: Text("Task title",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              Expanded(
                child: InputField(
                  controller: controller.contentCon,
                  maxLines: 3,
                  label: Text("Description",
                      style: Theme.of(context).textTheme.titleMedium),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
