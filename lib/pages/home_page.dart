import 'package:coffeeorderingapp/pages/item_details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 42.0, left: 8.0, right: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: Color(0xFF583732),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Color(0xFFACA4A4)),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color(0xFFACA4A4),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color(0xFF583732),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage("assets/images/category_1.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "ALL",
                          style: TextStyle(
                            color: Color(0xFF583732),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),

                    Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage("assets/images/category_2.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Capucino",
                          style: TextStyle(
                            color: Colors.brown[400],
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),

                    Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage("assets/images/category_3.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Expresso",
                          style: TextStyle(
                            color: Colors.brown[400],
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),

                    Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage("assets/images/category_3.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Latte",
                          style: TextStyle(
                            color: Colors.brown[400],
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Promotion",
                style: TextStyle(
                  color: Color(0xFF583732),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 15),

              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(88, 55, 50, 0.70), // #583732 مع 70% opacity
                      Color.fromRGBO(88, 55, 50, 0.49), // #583732 مع 49% opacity
                    ],
                    stops: [0.0, 1.0], // بداية ونهاية التدرج
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Today's Offer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Free Bottle Of Coffee Latte",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "on all orders above Rp.200.000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/category_3.png"),
                      width: 105,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Popular",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFF583732),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ItemDetailsPage())
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.brown[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Center(
                              child: Image(
                                image: AssetImage("assets/images/category_1.png"),
                                width: 54,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Creamy Latte",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                color: Color(0xFF583732),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 40.000",
                                  style: TextStyle(
                                    color: Color(0xFFD9C61C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  color: Color(0xFF583732),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.brown[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 5,
                        right: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Center(
                            child: Image(
                              image: AssetImage("assets/images/category_3.png"),
                              width: 54,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Cappucino Latte",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              color: Color(0xFF583732),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  color: Color(0xFFD9C61C),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                color: Color(0xFF583732),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
