import 'package:flutter/material.dart';
import 'package:untitled/features/search/widgets/item.dart';

class SearchForItem extends StatefulWidget {
  const SearchForItem({super.key});

  @override
  State<SearchForItem> createState() => _SearchForItemState();
}

class _SearchForItemState extends State<SearchForItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Container(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("On Sale")),
                ),
                Container(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Price")),
                      Icon(Icons.arrow_downward)
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Sort by")),
                      Icon(Icons.arrow_downward)
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("On Sale")),
                      Icon(Icons.arrow_downward)
                    ],
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
              crossAxisCount: 2,
          children: [
            Item(),
            Item(),
            Item(),
            Item(),
            Item(),
            Item(),
          ],)
        ],
      ),
    );
  }
}
