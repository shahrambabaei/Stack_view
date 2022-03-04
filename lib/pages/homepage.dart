import 'package:flutter/material.dart';
import 'package:stack_view/widgets/appbaritem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double W = 0, H = 0;
  @override
  void didChangeDependencies() {
    W = MediaQuery.of(context).size.width;
    H = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarItem(width: W, height: H * .08),
      body: buildBody(),
    );
  }

//‌Body
  Widget buildBody() => Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            buildBackground(),
            Positioned(right: 8, top: 8, child: buildBookMark()),
            Positioned(top: 15, left: -32, child: buildBadge()),
            buildTitle(),
            Positioned(bottom: 15, child: buildActions())
          ],
        ),
      );

// buildBackground
  Widget buildBackground() => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.black,
          child: Opacity(
              opacity: .8,
              child: Image.asset(
                'lib/assets/images/child.jpg',
                fit: BoxFit.cover,
              )),
        ),
      );

  // buildbookMark
  Widget buildBookMark() => IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.bookmark_border,
        color: Colors.white,
        size: 35,
      ));

  // buildBadge
  Widget buildBadge() => RotationTransition(
        turns: const AlwaysStoppedAnimation(-45 / 360),
        child: Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Text(
              'POPLAR',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );

  //buildTitle
  Widget buildTitle() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LIMITTS',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Container(
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    'Ascience fiction thriller film directed by Neil Burger',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  )))
        ],
      );

  //buildActions
  Widget buildActions() => Container(
        width: W,
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "27K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "3.2K",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  ],
                ),
                Row()
              ],
            )),
      );
}
