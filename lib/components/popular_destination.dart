import 'package:flutter/material.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Destination',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Text(
              'See all',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 10),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularDestinationCard(
                title: "Pianemo Island",
                location: "Raja Ampat, Indonesia",
                image: "assets/images/painemo.jpg",
              ),
              PopularDestinationCard(
                title: "Kelingking Beach",
                location: "Bali, Indonesia",
                image: "assets/images/kelingking.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PopularDestinationCard extends StatelessWidget {
  PopularDestinationCard({
    Key? key,
    required this.title,
    required this.location,
    required this.image,
  }) : super(key: key);

  String title, location, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      height: 300,
      width: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(.2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.blue,
                    ),
                    Text(
                      location,
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
