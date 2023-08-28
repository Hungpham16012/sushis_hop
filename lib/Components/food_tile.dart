import 'package:flutter/material.dart';
import 'package:sushi_shop/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(

        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(food.imagePath,
            height: 120,),
            Text( food.name,
            style: const TextStyle(
              fontFamily: 'SpaceGrotesk',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$' + food.price,
                  style:  TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20,
                  ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star,
                      color: Colors.yellow,),
                    const  SizedBox(width: 5),
                      Text(food.rating,
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}

