import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Ads"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "My Ads",
                icon: Icon(Icons.shopping_bag),
              ),
              Tab(
                text: "My Favourites",
                icon: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
