import 'package:flutter/material.dart';
import 'package:flutterdelivery1/pages/bottomnav.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => BurgerState();
}

class BurgerState extends State<Burger> {
final List<Map<String, String>> burgerList = [
    {
      "name": "Cheeseburger",
      "shop": "Wendy's Burger",
      "image": "images/burger1.png", 
      "rating": "4.9"
    },
    {
      "name": "Humberger",
      "shop": "Chicken Burger",
      "image": "images/burger2.png", 
      "rating": "4.9"
    },
    {
      "name": "Turkey Burger",
      "shop": "Specialty Burger",
      "image": "images/burger1.png", 
      "rating": "4.9"
    },
    {
      "name": "Classic Burger",
      "shop": "Veggie Burger",
      "image": "images/burger2.png",
      "rating": "4.9"
    },
    {
      "name": "Classic Burger",
      "shop": "Veggie Burger",
      "image": "images/burger2.png",
      "rating": "4.9"
    },
    {
      "name": "Classic Burger",
      "shop": "Veggie Burger",
      "image": "images/burger2.png",
      "rating": "4.9"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
      appBar: AppBar(
       leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  const BottomNav()));// Aion when back button is pressed
          },
        ),
          
        title: const Text('Burgers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: burgerList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return buildWishlistCard(burgerList[index]);
          },
        ),
      ),
    );
  }

 Widget buildWishlistCard(Map<String, String> burger) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          burger["image"]!.startsWith('http')
              ? Image.network(
                  burger["image"]!,
                  height: 80,
                )
              : Image.asset(
                  burger["image"]!, // Use local image
                  height: 80,
                ),
          const SizedBox(height: 8),
          Text(
            burger["name"]!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            burger["shop"]!,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text(burger["rating"]!),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined, color: Colors.red,),
                onPressed: () {
                  // Handle wishlist action
                },
              )
            ],
          ),
        ],
      ),
    ),
  );
}
}