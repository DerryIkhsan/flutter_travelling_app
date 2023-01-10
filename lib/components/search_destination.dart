import 'package:flutter/material.dart';

class SearchDestination extends StatelessWidget {
  const SearchDestination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.all(10),
        fillColor: Colors.grey.withOpacity(.1),
        hintText: "Search destination...",
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black54,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}