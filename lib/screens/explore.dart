// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';
// import 'package:persistent_bottom_nav_bar/';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: Color(0xff1b1b1b),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xff232a50)),
            bottom: BorderSide(width: 1, color: Color(0xff1b1b1b)),
            left: BorderSide(width: 1, color: Color(0xff1b1b1b)),
            right: BorderSide(width: 1, color: Color(0xff1b1b1b)),
          ),
          color: Color(0xff1b1b1b),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  tooltip: 'Hello',
                  icon: Icon(Icons.home),
                  onPressed: () {},
                  iconSize: 35,
                  color: Colors.white,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  tooltip: 'Explore',
                  icon: Icon(Icons.explore),
                  onPressed: () {},
                  iconSize: 35,
                  color: Colors.white,
                ),
                Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // IconButton(
            //   icon: Icon(Icons.home),
            //   onPressed: () {},
            //   iconSize: 35,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  tooltip: 'Chat',
                  icon: Icon(Icons.chat),
                  onPressed: () {},
                  iconSize: 35,
                  color: Colors.white,
                ),
                Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  tooltip: 'SubPay',
                  icon: Icon(Icons.wallet),
                  onPressed: () {},
                  iconSize: 35,
                  color: Colors.white,
                ),
                Text(
                  'SubPay',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 23,
              child: IconButton(
                  color: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.trophy,
                  ),
                  onPressed: () {}),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: FaIcon(
                  FontAwesomeIcons.cartShopping,
                ),
              ),
            ),
          ),
        ],
        title: Text(
          'Explore',
          style: TextStyle(
            color: Color(0xfff0f0f0),
          ),
        ),
        backgroundColor: Color(0xff1b1b1b),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              getPlayAndEarn(),
              getCarouselSlider(),
              getListTileWithButton(title: 'All Subscriptions'),
              getSubscriptionsRow(),
              getListTileWithButton(title: 'Public Groups'),
              getGroupsColumn(),
              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: const GradientBoxBorder(
                    width: 2,
                    gradient: LinearGradient(colors: [
                      Color(0xffcf8d1a),
                      Colors.white,
                      Colors.green
                    ]),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff212121),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Show All Public Groups',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              getSuggestionSection(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getSuggestionSection() {
  return Container(
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Color(0xff2b2b2b),
      borderRadius: BorderRadius.circular(10),
    ),
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'What do you want us to list next?',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Suggest us a subscription',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Give your suggestion',
                    hintStyle: TextStyle(
                      color: Color(
                        0xff878787,
                      ),
                    ),
                    fillColor: Color(0xff3d3d3d),
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        // TextField(
        //   style: TextStyle(wid),
        // ),
        // IconButton(
        //   onPressed: () {},
        //   icon: FaIcon(FontAwesomeIcons.arrowRight),
        // ),
      ],
    ),
  );
}

Widget getGroupsColumn() {
  return Column(
    children: [
      getGropsColumnItem(),
      getGropsColumnItem(),
      getGropsColumnItem(),
      getGropsColumnItem(),
      getGropsColumnItem(),
      getGropsColumnItem(),
      getGropsColumnItem(),
    ],
  );
}

Widget getGropsColumnItem() {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ),
    child: ListTile(
      visualDensity: VisualDensity(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      style: ListTileStyle.list,
      tileColor: Color(0xff2b2b2b),
      leading: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 26,
        child: FaIcon(
          FontAwesomeIcons.spotify,
          size: 50,
          color: Colors.green,
        ),
      ),
      title: Column(
        children: const [
          Text(
            'Spotify Duo plan',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'by priyan',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '₹ 900 / User / Year',
            style: TextStyle(color: Colors.white),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              visualDensity: VisualDensity(horizontal: 4, vertical: 0),
              padding: EdgeInsets.all(0),
              primary: Color(0xff3f51b5),
            ),
            child: Text('Join'),
          )
        ],
      ),
    ),
  );
}

Widget getSubscriptionsRow() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          getSubscriptionRowContainer(),
          getSubscriptionRowContainer(),
          getSubscriptionRowContainer(),
          getSubscriptionRowContainer(),
        ],
      ),
    ),
  );
}

Widget getSubscriptionRowContainer() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/kaspersky.jpeg')),
      borderRadius: BorderRadius.circular(10),
      // color: Colors.red,
    ),
    height: 250,
    width: 180,
    child: Center(),
  );
}

Widget getListTileWithButton({required String title}) {
  return ListTile(
    leading: Text(
      '$title',
      style: TextStyle(
        color: Color(0xff747474),
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xff393939),
      ),
      child: Text(
        'See More',
        textScaleFactor: 1,
        style: TextStyle(
          color: Color(0xffe0de70),
        ),
      ),
      onPressed: () {},
    ),
  );
}

Widget getPlayAndEarn() {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xff3f4b57),
        ),
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          colors: [
            Color(0xff000817),
            Color(0xff00182c),
          ],
        )),
    child: ListTile(
      trailing: FaIcon(
        FontAwesomeIcons.anglesRight,
        color: Colors.white,
      ),
      title: Text(
        'Play and earn coins',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.yellow,
        child: FaIcon(
          FontAwesomeIcons.rupeeSign,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget getCarouselSlider() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 200.0,
      aspectRatio: 10,
      autoPlay: true,
      viewportFraction: 0.9,
    ),
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: Image.asset(
              'assets/iit.jpeg',
              height: 200,
            ),
          );
        },
      );
    }).toList(),
  );
}
