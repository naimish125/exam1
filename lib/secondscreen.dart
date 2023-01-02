import 'package:exam1/secondscreen.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  String name = "";
  String price = "";

  Page2(this.name, this.price);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.yellow,
              child: Image.asset("assets/images/watch.png"),
            ),
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.pink,
                      size: 40,
                    ),
                    Icon(
                      Icons.shopping_bag,
                      size: 40,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "${widget.name}\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "${widget.price}\n",
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "Description\n",
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      WidgetSpan(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {

                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}