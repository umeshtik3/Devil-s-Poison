import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:posion/Screens/Whiskey.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key key}) : super(key: key);
  var poisionNames = ['Vodka', 'Whiskey', 'Rum', 'Gin', 'Liqueur', 'Tequila'];
  var img = [
    'assets/heinken.jpg',
    'assets/jackdaniel.jpg',
    'assets/kingfisher.jpg'
  ];

  goToSection(int index) {
    var sectionList = [
      Get.to(() => Whiskey()),
      Get.to(() => Whiskey()),
      Get.to(() => Whiskey()),
      Get.to(() => Whiskey()),
      Get.to(() => Whiskey()),
      Get.to(() => Whiskey())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Devils Poison'),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  //Go to search screen
                }),
            IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  //Goto add to cart screen
                })
          ],
        ),
        drawer: Column(
          children: [Text('')],
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Center(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 300.0, autoPlay: true, viewportFraction: 1.0),
                items: img.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return
                          //  FittedBox(
                          //   child: Image.asset(i),
                          //   fit: BoxFit.fill,
                          // );
                          Container(
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  BoxDecoration(color: Colors.indigo[200]),
                              child:
                                  // Image.asset(i),
                                  FittedBox(
                                child: Image.asset(i),
                                fit: BoxFit.fill,
                              ));
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisSpacing: 20,
                // mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: [
                  for (int i = 0; i < poisionNames.length; i++)
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                      child: InkWell(
                        onTap: () => goToSection(i),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.indigo[700],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              poisionNames[i],
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            )
          ]),
        ))));
  }
}
