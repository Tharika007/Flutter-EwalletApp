import 'package:flutter/material.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

import 'package:flutter/material.dart';

import 'Components/TopicContainer.dart';
import '../constant.dart';
import 'Components/TextFormField.dart';
import 'Components/RoundedButtons.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primarybackgroundcolor,
      appBar: AppBar(
        backgroundColor: primarybackgroundcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SubTopic02(
              text: "What's it for?",
            ),
            WhiteLinedTextformField(
                hint: '',
                press: () {},
                margin: EdgeInsets.only(left: 10, right: 10)),
            EmojiPicker(
              onEmojiSelected: (category, emoji) {
                // Do something when emoji is tapped
              },
              onBackspacePressed: () {
                // Backspace-Button tapped logic
                // Remove this line to also remove the button in the UI
              },
              config: Config(
                  columns: 7,
                  emojiSizeMax: 5,
                  horizontalSpacing: 0,
                  initCategory: Category.RECENT,
                  bgColor: primarygoldcolor,
                  indicatorColor: Colors.blue,
                  iconColor: Colors.grey,
                  iconColorSelected: Colors.blue,
                  progressIndicatorColor: Colors.blue,
                  showRecentsTab: true,
                  recentsLimit: 28,
                  noRecentsText: "No Recents",
                  noRecentsStyle:
                      const TextStyle(fontSize: 20, color: Colors.black26),
                  tabIndicatorAnimDuration: kTabScrollDuration,
                  categoryIcons: const CategoryIcons(),
                  buttonMode: ButtonMode.MATERIAL),
            ),
          ],
        ),
      ),
    );
  }
}
