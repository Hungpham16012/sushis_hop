import 'package:flutter/material.dart';
import 'package:sushi_shop/Components/button.dart';
import 'package:sushi_shop/models/food.dart';
import 'package:sushi_shop/theme/Color.dart';

class DetailFood extends StatefulWidget {
  final Food food;

  const DetailFood({required this.food, Key? key}) : super(key: key);

  @override
  State<DetailFood> createState() => _DetailFoodState();
}

class _DetailFoodState extends State<DetailFood> {
  int quantity = 0;
  int totalAmount = 0;
  void CongSoluong() {
    setState(() {
      quantity++;
      calculateTotalAmount();
    });
  }

  void TruSoluong() {
    if (quantity > 0) {
      setState(() {
        quantity--;
        calculateTotalAmount();
      });
    }
  }

  void calculateTotalAmount() {
    totalAmount = quantity * int.parse(widget.food.price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[900], size: 25),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10), // Add right margin here
            child: IconButton(
              icon: const Icon(Icons.favorite, color: Colors.red, size: 25),
              onPressed: () {
                // Handle favorite button press
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  children: [
                    // image
                    Image.asset(
                      widget.food.imagePath,
                      height: 200,
                    ),
                    // rating
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          widget.food.rating,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Descreption',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SpaceGrotesk',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'DThe straight line of the arrow is a little longer'
                      ' and the head of the arrow is a little shorter'
                      ' and the head of the arrow is a little shorter'
                      'achieve this? Should I use another icon e code:'
                      'achieve this? Should I use another icon e code:',
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                        fontFamily: 'SpaceGrotesk',
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$' + totalAmount.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            TruSoluong();
                          },
                          icon: const Icon(Icons.remove),
                          color: Colors.lightGreen,
                        ),
                        Text(
                          quantity.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            CongSoluong();
                          },
                          icon: const Icon(Icons.add),
                          color: Colors.lightGreen,
                        )
                      ],
                    )
                  ],
                ),
                MyButton(text: 'Buy Now', onTap: () {})
              ],
            ),
          ),
        ],
      ),

      // Rest of your content for the DetailFood screen
    );
  }
}
