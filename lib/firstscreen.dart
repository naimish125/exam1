import 'package:exam1/firstscreen.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  List name = [
    "watch",
    "watch",
    "watch",
    "watch",
  ];
  List price = [
    "\$45",
    "\$45",
    "\$45",
    "\$45",

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Name",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.shopping_bag,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: name.asMap().entries.map((e) => Buy(name[e.key], price[e.key])).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget Buy(String name, String price)
  {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white70,
                        offset: Offset(2, 2))
                  ]),
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/watch.png",
                    height: 75,
                    width: 75,
                  ),
                  Text(
                    "$name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$price  ",
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "\$79",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                          decoration:
                          TextDecoration.lineThrough,
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Buy",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white70,
                        offset: Offset(2, 2))
                  ]),
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/watch.png",
                    height: 75,
                    width: 75,
                  ),
                  Text(
                    "watch",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "\$45  ",
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "\$79",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                          decoration:
                          TextDecoration.lineThrough,
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Buy",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}