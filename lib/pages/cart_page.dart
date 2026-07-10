import 'package:coffeeorderingapp/pages/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int latteCount = 1;
  int cappuccinoCount = 1;

  int lattePrice = 40000;
  int cappuccinoPrice = 50000;

  void addLatte() {
    setState(() {
      latteCount++;
    });
  }

  void removeLatte() {
    setState(() {
      if (latteCount > 0) {
        latteCount--;
      }
    });
  }

  void addCappuccino() {
    setState(() {
      cappuccinoCount++;
    });
  }

  void removeCappuccino() {
    setState(() {
      if (cappuccinoCount > 0) {
        cappuccinoCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int total = (latteCount * lattePrice) + (cappuccinoCount * cappuccinoPrice);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 15,
            top: 48,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2 items in cart",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(96, 60, 53, 1),
                ),
              ),
              SizedBox(height: 20),

              cartItem(
                image: "assets/images/category_1.png",
                title: "Creamy Latte",
                price: "Rp. 40.000",
                count: latteCount,
                minusFunction: removeLatte,
                plusFunction: addLatte,
              ),
              SizedBox(height: 15),

              cartItem(
                image: "assets/images/category_3.png",
                title: "Cappuccino Latte",
                price: "Rp. 50.000",
                count: cappuccinoCount,
                minusFunction: removeCappuccino,
                plusFunction: addCappuccino,
              ),
              SizedBox(height: 22),

              Text(
                "Order Instruction",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(96, 60, 53, 1),
                ),
              ),
              SizedBox(height: 8),

              Container(
                width: 317,
                height: 69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: TextField(
                  style: TextStyle(

                  ),
                ),
              ),
              SizedBox(height: 35),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(96, 60, 53, 1),
                    ),
                  ),
                  Text(
                    "Rp. $total",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(229, 193, 0, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),

              Center(
                child: Container(
                  width: 329,
                  height: 71,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(103, 61, 53, 1),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },
                  child: Text(
                    "Back to Menu",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Color.fromRGBO(103, 61, 53, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cartItem({
    required String image,
    required String title,
    required String price,
    required int count,
    required VoidCallback minusFunction,
    required VoidCallback plusFunction,
  }) {
    return Row(
      children: [
        // Item image smaller
        Container(
          width: 85,
          height: 90,
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 242, 242, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(image, width: 54),
        ),
        SizedBox(width: 17),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      color: Color.fromRGBO(96, 60, 53, 1),
                    ),
                  ),

                  cancelButton(),
                ],
              ),
              SizedBox(height: 8),

              Text(
                price,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(229, 193, 0, 1),
                ),
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  smallButton(icon: Icons.remove, function: minusFunction),
                  SizedBox(width: 12),

                  Text(
                    "$count",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(96, 60, 53, 1),
                    ),
                  ),
                  SizedBox(width: 12),

                  smallButton(icon: Icons.add, function: plusFunction),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget cancelButton() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Icon(Icons.close, color: Colors.red, size: 18),
      ),
    );
  }

  Widget smallButton({required IconData icon, required VoidCallback function}) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(96, 60, 53, 1), width: 3),
        shape: BoxShape.circle,
      ),
      child: TextButton(
        onPressed: function,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Icon(icon, size: 21, color: Color.fromRGBO(96, 60, 53, 1)),
      ),
    );
  }
}
