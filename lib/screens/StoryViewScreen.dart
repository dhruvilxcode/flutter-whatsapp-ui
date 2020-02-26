import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {

  final controller = StoryController();

  @override
  Widget build(BuildContext context) {

    List<StoryItem> stories = [
      StoryItem.text(
        "Hello there, this is going to awesome. done awesome photoshoot at studio.",
        Colors.black,
      ),

      StoryItem.pageImage(
        NetworkImage(
          "https://images.pexels.com/photos/2092474/pexels-photo-2092474.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
        ),
      ),

      StoryItem.pageImage(
        NetworkImage(
          "https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
        ),
      ),

      StoryItem.pageImage(
        NetworkImage(
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
        ),
      ),
    ];

    return Material(
      child: StoryView(
        stories,
        controller: controller,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}