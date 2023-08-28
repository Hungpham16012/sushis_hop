import 'package:flutter/material.dart';
import 'package:sushi_shop/Components/button.dart';
import 'package:sushi_shop/models/food.dart';
import 'package:sushi_shop/theme/Color.dart';
import 'package:sushi_shop/Components/food_tile.dart';
import 'package:sushi_shop/pages/detail_food.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List listMenu = [
    Food(
        name: 'Original Sushi',
        price: '200',
        imagePath: 'lib/images/tuna.png',
        rating: '5.0'),
    Food(
        name: 'Salmon Sushi',
        price: '200',
        imagePath: 'lib/images/salmon_sushi.png',
        rating: '4.2'),
    Food(
        name: 'Salmon Potato',
        price: '150',
        imagePath: 'lib/images/salmon_sushi.png',
        rating: '4.8'),
  ];

  void NavigatetoFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailFood(food: listMenu[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: (const Icon(
          Icons.menu,
          color: Colors.black,
          size: 20,
        )),
        title: Text('Hà Nội', style: TextStyle(color: Colors.grey[900])),
      ),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 32% Promo',
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 20,
                        color: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyButton(
                      text: "Buy Food",
                      onTap: () {},
                    )
                  ],
                ),
                Image.asset(
                  'lib/images/many_sushi.png',
                  height: 110,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Search Here..',
                labelStyle: const TextStyle(color: Colors.grey),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMenu.length, // Use the length of your listMenu
              itemBuilder: (context, index) {
                return FoodTile(
                    food: listMenu[index],
                    onTap: () {
                      NavigatetoFoodDetails(index);
                    }); // Use listMenu[index]
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Popular Food',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'SpaceGrotesk',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'lib/images/salmon_sushi.png',
                  height: 60,
                ),
                Column(
                  children: [
                    const Text(
                      'Manucian',
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '\$200',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '5.0',
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
