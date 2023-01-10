import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Derry,",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Travelling Today?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            image: DecorationImage(image: AssetImage("assets/user/profil.jpg")),
          ),
        ),
      ],
    );
  }
}
