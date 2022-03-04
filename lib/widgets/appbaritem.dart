import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget implements PreferredSizeWidget {
  final double width, height;
  const AppBarItem({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
      height: height,
      margin: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu_sharp),
                splashRadius: 15,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15, right: 15),
              ),
              const Text(
                'Audio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                splashRadius: 15,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
                splashRadius: 15,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 15),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(width, height);
}
