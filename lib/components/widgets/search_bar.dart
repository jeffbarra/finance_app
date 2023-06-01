import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // Add padding around the search bar
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        // Use a Material design search bar
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => {},
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
