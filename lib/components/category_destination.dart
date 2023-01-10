import 'package:flutter/material.dart';

class CategoryDestination extends StatelessWidget {
  const CategoryDestination({
    Key? key,
    required this.primaryColor,
    required this.secondaryColor,
  }) : super(key: key);

  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 140,
            height: 40,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/island.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Beach",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 140,
            height: 40,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/mountain.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Mountain",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.65),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 140,
            height: 40,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/tent.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Camping",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.65),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}