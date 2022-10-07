import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search...',
            prefixIcon: const Icon(
              Icons.search_rounded,
            ),
            prefixIconColor: Colors.grey.shade300,
            suffixIcon: const Icon(
              Icons.filter_alt_outlined,
            ),
            suffixIconColor: Colors.grey.shade300),
      ),
    );
  }
}
