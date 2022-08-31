import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> _categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Fashion',
    'Gadgets',
    'Music'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Mr. Tanjil",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  //fontFamily: 'Seasrn',
                ),
              ),
              Text(
                "Let's gets something?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4F4C4C),
                ),
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During\n Covid19",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "assets/vegetables.png",
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During\n Covid19",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "assets/vegetables.png",
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During\n Covid19",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "assets/vegetables.png",
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (_, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              _categories[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: .7,
                    ),
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 30, right: 20, bottom: 10),
                        height: 239,
                        width: 195.34,
                        decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: -30,
                              left: -10,
                              child: Image.asset(
                                "assets/watch.png",
                                height: 180,
                                width: 170,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              /*Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Icon(Icons.watch, size: 40, color: Colors.amber),
                  title: Text('Apple Watch'),
                  subtitle: Text('Series 6.Red'),
                  trailing: Text('$359'),
                ),
              ),*/
              SizedBox(height: 20),
              /*Container(
                margin:
                    EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                height: 180,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -30,
                      child: Image.asset(
                        "assets/watch.png",
                        height: 180,
                        width: 170,
                      ),
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
