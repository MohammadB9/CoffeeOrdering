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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 15,
            top: 60
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2 items in cart",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(96, 60, 53, 1),
                ),
              ),
              SizedBox(height: 30), // Increased spacing

              cartItem(
                image: "assets/images/category_1.png",
                title: "Creamy Latte",
                price: "Rp. 40.000",
                count: latteCount,
                minusFunction: removeLatte,
                plusFunction: addLatte,
              ),
              SizedBox(height: 30), // Increased spacing

              cartItem(
                image: "assets/images/category_3.png",
                title: "Cappuccino Latte",
                price: "Rp. 50.000",
                count: cappuccinoCount,
                minusFunction: removeCappuccino,
                plusFunction: addCappuccino,
              ),
              SizedBox(
                height: 40,
              ), // Significantly increased spacing before Order Instruction

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Instruction",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(96, 60, 53, 1),
                      ),
                    ),
                    SizedBox(height: 12),
                    
                    Container(
                      width: double.infinity,
                      height: 69,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400, width: 1.5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        style: TextStyle(fontFamily: "Poppins"),
                      ),
                    ),
                    SizedBox(height: 45),
                    
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(229, 193, 0, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    
                    Container(
                      width: double.infinity,
                      height: 71,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(80, 50, 45, 1),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    
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
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(96, 60, 53, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Increased container size to match the right image
        Container(
          width: 125,
          height: 140,
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 242, 242, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Image.asset(image, fit: BoxFit.contain),
          ),
        ),
        SizedBox(width: 20),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5), // Slight push down for visual alignment
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18, // Slightly larger title
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
                  fontSize: 16, // Slightly larger price
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(229, 193, 0, 1),
                ),
              ),
              SizedBox(
                height: 38,
              ), // Increased spacing between price and buttons

              Row(
                children: [
                  smallButton(icon: Icons.remove, function: minusFunction),
                  SizedBox(width: 18),
                  Text(
                    "$count",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20, // Larger count number
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(96, 60, 53, 1),
                    ),
                  ),
                  SizedBox(width: 18),
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
    return InkWell(
      onTap: () {},
      child: Icon(
        Icons.cancel_outlined,
        color: Colors.red,
        size: 32, // Increased icon size
      ),
    );
  }

  Widget smallButton({required IconData icon, required VoidCallback function}) {
    return Container(
      width: 32, // Increased button width
      height: 32, // Increased button height
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(96, 60, 53, 1),
          width: 2.5,
        ), // Thicker border
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: function,
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          size: 20,
          color: Color.fromRGBO(96, 60, 53, 1),
        ), // Increased icon size
      ),
    );
  }
}
