import 'package:flutter/material.dart';

class NearbyDestination extends StatelessWidget {
  const NearbyDestination({
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
              'Nearby Me',
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
        Padding(
          padding: EdgeInsets.all(4),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/images/madasari.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pangandaran Beach',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Pangandaran, Indonesia',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black45),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        '3,5 Km',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}