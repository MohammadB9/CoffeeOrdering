import 'package:coffeeorderingapp/pages/cart_page.dart';
import 'package:flutter/material.dart';

class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({super.key});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  int counter = 1;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF583732),
      appBar: AppBar(title: Text(""), backgroundColor: Color(0xFF583732)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Diamond Gradient Glow
                Transform.rotate(
                  angle: 0.785398, // 45 degrees in radians
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withValues(alpha: 0.25),
                          blurRadius: 60,
                          spreadRadius: 60,
                          
                        ),
                      ],
                    ),
                  ),
                ),
                // Original Image
                Image(
                  image: AssetImage("assets/images/category_3.png"),
                  width: 205,
                ),
              ],
            ),
            SizedBox(height: 20),
        
            Container(
              width: double.infinity,
              height: 517,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 45, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF583732),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 25),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Rp.50.000",
                          style: TextStyle(
                            color: Color(0xFFD9C61C),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Creamy Latte",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: Color(0xFF583732),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  decrement();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Color(0xFF583732),
                                      width: 3,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xFF583732),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "$counter",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  increment();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Color(0xFF583732),
                                      width: 3,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF583732),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
        
                    Text(
                      "Creamy Latte dapat mengatur tingkat kemanisan kopi sesuai selera",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        color: Colors.brown.shade300,
                      ),
                    ),
                    SizedBox(height: 40),
        
                    Text(
                      "Add Ones",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Color(0xFF583732),
                      ),
                    ),
                    SizedBox(height: 15),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 79,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image(
                                image: AssetImage(
                                  "assets/images/ingredient_1.png",
                                ),
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 60,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xFF583732),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
        
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 79,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image(
                                image: AssetImage(
                                  "assets/images/ingredient_2.png",
                                ),
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 60,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xFF583732),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
        
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 79,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image(
                                image: AssetImage(
                                  "assets/images/ingredient_3.png",
                                ),
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 60,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xFF583732),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
        
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context)=>CartPage(),),
                          );
                        },
                        child: Container(
                          width: 350,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF583732),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Add to Card",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
