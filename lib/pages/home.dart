import 'package:flutter/material.dart';
import 'package:flutterdelivery1/pages/burger.dart';
import 'package:flutterdelivery1/pages/details.dart';
import 'package:flutterdelivery1/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false,
      pizza = false,
      salad = false,
      burger = false,
      isFavorited = false;
  int? favoredIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello User,", style: AppWidget.boldTextFeildStyle()),
                  Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text("Delicious Food", style: AppWidget.HeadlineTextFeildStyle()),
              Text("Discover and Get Great Food",
                  style: AppWidget.LightTextFeildStyle()),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 20.0), child: showItem()),
              const SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "images/salad2.png",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Text("Veggie Taco Hash",
                                      style:
                                          AppWidget.semiBoldTextFeildStyle()),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("Fresh and Healthy",
                                      style: AppWidget.LightTextFeildStyle()),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // This spaces the items evenly
                                    children: [
                                      Text(
                                        "₹230",
                                        style:
                                            AppWidget.semiBoldTextFeildStyle(),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          isFavorited
                                              ? Icons.favorite
                                              : Icons.favorite_outline,
                                          color:
                                              isFavorited ? Colors.red : null,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            // Toggle the favorite state
                                            if (isFavorited) {
                                              favoredIndex = null;
                                            } else {
                                              int? index;
                                              favoredIndex = index;
                                            } // Unfavorite if already favored
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/salad4.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text("Mix Veg Salad",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text("Spicy with Onion",
                                    style: AppWidget.LightTextFeildStyle()),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // This spaces the items evenly
                                  children: [
                                    Text(
                                      "₹150",
                                      style: AppWidget.semiBoldTextFeildStyle(),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons
                                                .favorite_outline, // Change icon based on state
                                        color: isFavorited
                                            ? Colors.red
                                            : null, // Change color when favorited
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the favorite state
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/salad5.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Mediterranean ",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text("Spicy with Onion",
                                    style: AppWidget.LightTextFeildStyle()),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // This spaces the items evenly
                                  children: [
                                    Text(
                                      "₹175",
                                      style: AppWidget.semiBoldTextFeildStyle(),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons
                                                .favorite_outline, // Change icon based on state
                                        color: isFavorited
                                            ? Colors.red
                                            : null, // Change color when favorited
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the favorite state
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad5.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Mediterranean ",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Honey goot cheese",
                                  style: AppWidget.LightTextFeildStyle(),
                                )),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // This spaces the items evenly
                                  children: [
                                    Text(
                                      "₹125",
                                      style: AppWidget.semiBoldTextFeildStyle(),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons
                                                .favorite_outline, // Change icon based on state
                                        color: isFavorited
                                            ? Colors.red
                                            : null, // Change color when favorited
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the favorite state
                                          isFavorited = !isFavorited;
                                        });
                                      },
                                    ),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad2.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Veggie Taco Hash",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Honey goot cheese",
                                  style: AppWidget.LightTextFeildStyle(),
                                )),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // This spaces the items evenly
                                  children: [
                                    Text(
                                      "₹145",
                                      style: AppWidget.semiBoldTextFeildStyle(),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons
                                                .favorite_outline, // Change icon based on state
                                        color: isFavorited
                                            ? Colors.red
                                            : null, // Change color when favorited
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the favorite state
                                          isFavorited = !isFavorited;
                                        });
                                      },
                                    ),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad4.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Mix Veg Salad",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Honey goot cheese",
                                  style: AppWidget.LightTextFeildStyle(),
                                )),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // This spaces the items evenly
                                  children: [
                                    Text(
                                      "₹215",
                                      style: AppWidget.semiBoldTextFeildStyle(),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons
                                                .favorite_outline, // Change icon based on state
                                        color: isFavorited
                                            ? Colors.red
                                            : null, // Change color when favorited
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the favorite state
                                          isFavorited = !isFavorited;
                                        });
                                      },
                                    ),
                                  ],
                                ))
                          ],
                        )
                      ],
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

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Burger())); // Aion when back button is pressed
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
