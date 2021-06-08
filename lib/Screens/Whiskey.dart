import 'package:flutter/material.dart';

class Whiskey extends StatelessWidget {
  const Whiskey({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List blend = ['BLENDED', 'VIEW ALL'];
    List irishBlend = [
      'RYE WHISKEY ',
      'BOURBON',
      'TENNESSE WHISKEY',
      'VIEW ALL'
    ];
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
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WORLD OF WHISKEY',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.w500),
              ),
              NewWidget(
                titleText: 'JAPANESE WHISKEY',
                varietyList: blend,
              ),
              SizedBox(
                height: 9,
              ),
              NewWidget(
                titleText: 'IRISH WHISKEY',
                varietyList: irishBlend,
              ),
              SizedBox(
                height: 9,
              ),
              NewWidget(
                titleText: 'AMERICAN WHISKEY',
                varietyList: blend,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final List varietyList;
  final titleText;
  const NewWidget({Key key, this.titleText, this.varietyList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int lengthOfList = varietyList.length;
    return Card(
      elevation: 3,
      color: Colors.brown[100],
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Text(
            titleText,
            style: TextStyle(
                fontSize: 18,
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Container(
          height: lengthOfList == 1
              ? 60
              : lengthOfList >= 3
                  ? 110
                  : 60,
          width: 400,
          child: Column(
            children: [
              Flexible(
                child:
                    // Text('Hi')
                    GridView.count(
                  childAspectRatio: 3 / 1,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,

                  children: [
                    for (int i = 0; i < lengthOfList; i++)
                      Chip(
                        backgroundColor: Colors.indigo,
                        label: SizedBox(
                          width: 180,
                          // padding:
                          // EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                          child: Text(
                            '${varietyList[i]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.w,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                  ],
                  // itemCount: lengthOfList,
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2,
                  //     mainAxisSpacing: 0.1,
                  //     childAspectRatio: 4 / 1

                  //     // mainAxisSpacing: 4.0
                  //     ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Chip(
      //       backgroundColor: Colors.indigo,
      //       label: Padding(
      //         padding:
      //             const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
      //         child: const Text(
      //           'Blended',
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.w500,
      //               color: Colors.white),
      //         ),
      //       ),
      //     ),
      //     Chip(
      //       backgroundColor: Colors.indigo,
      //       label: Padding(
      //         padding:
      //             const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
      //         child: const Text(
      //           'View All',
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.w500,
      //               color: Colors.white),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
