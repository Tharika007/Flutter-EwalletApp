import 'package:ewallet/Screens/Components/TopicContainer.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class SearchPeople extends StatefulWidget {
  @override
  _SearchPeopleState createState() => _SearchPeopleState();
}

class _SearchPeopleState extends State<SearchPeople> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  // ignore: unnecessary_new
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
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              MiddleTopic(
                text: "Search People",
                margin: EdgeInsets.only(
                  top: Height * 0.040,
                  bottom: Height * 0.040,
                  right: 6,
                  left: 6,
                ),
              ),
              TextFormField(
                style: const TextStyle(fontSize: 18, color: Colors.white),
                decoration: const InputDecoration(
                  //contentPadding: EdgeInsets.all(6),
                  labelText: 'Search',
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search,
                      color: Color.fromARGB(255, 163, 143, 73), size: 30),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: primarygoldcolor, width: 2.0),
                  ),
                ),
              ),

              // ListView(
              //   scrollDirection: Axis.vertical,
              //   padding: EdgeInsets.only(
              //       top: Height * 0.02,
              //       bottom: Height * 0.02,
              //       left: 6,
              //       right: 6),
              //   children: <Widget>[
              //     Column(

              //       mainAxisSize: MainAxisSize.min,
              //       children: <Widget>[
              //         Row(
              //           children: <Widget>[
              //             Container(

              //               width: double.infinity,
              //               height: Height * 0.050,
              //               decoration: const BoxDecoration(
              //                 shape: BoxShape.circle,
              //                 color: Colors.blue,
              //                 //image: DecorationImage(
              //                   //  fit: BoxFit.fill,
              //                     //image: NetworkImage("https:.."),

              //                     ),

              //               ),

              //           ],
              //         ),
              //       ],
              //     ),
            ],
          ),
        ),
      ),
    );
  }
}
