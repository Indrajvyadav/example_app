// import 'package:flutter/foundation.dart';
import 'package:example_app/display_food.dart';
import 'package:flutter/material.dart';
import 'package:example_app/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:example_app/food_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food app',
      theme: ThemeData(
        fontFamily: "poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// Column widget starts here
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 100,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink.withOpacity(0.7),
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.withOpacity(0.5),
          ),
          child: SvgPicture.asset('assets/images/Plus.svg'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 50,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/images/options.svg"),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '   Best Food in \n\t       Bengaluru',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Row within a Column
              child: Row(
                children: [
                  CategoryTitle(active: true, title: 'all'),
                  CategoryTitle(active: false, title: 'Indian Food'),
                  CategoryTitle(active: false, title: 'Italian'),
                  CategoryTitle(active: false, title: 'Chinese'),
                  CategoryTitle(active: false, title: 'Mexican'),
                  CategoryTitle(active: false, title: 'Dessert'),
                  CategoryTitle(active: false, title: 'beverages'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              bottom: 10,
              left: 10,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodColumn(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DisplayFood(
                                title: 'Chicken Dum Biryani',
                                desc:
                                    'Aromatic, delicious and spicy one pot chicken biryani made with basmati rice, spices, chicken and herbs.',
                                price: '₹ 299',
                                cal: '292cal',
                                img: 'assets/images/biryani1.jpg',
                              );
                            },
                          ),
                        );
                      },
                      img: 'assets/images/biryani1.jpg',
                      price: '₹ 299',
                      title: 'Nati Style Biryani',
                      desc:
                          'Aromatic, delicious and spicy one pot chicken biryani made with basmati rice, spices, chicken and herbs.',
                      cal: '292cal'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                  FoodColumn(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DisplayFood(
                                  img: 'assets/images/pizza.jpg',
                                  price: '₹ 399',
                                  title: 'Veggie Cheese Pizza',
                                  desc:
                                      'Creamy Feta Cheese and flavourful mushrooms, broccoli, spinach, bell peppers and corn topped on our perfectly charred sourdough pizza.',
                                  cal: '304cal');
                            },
                          ),
                        );
                      },
                      img: 'assets/images/pizza.jpg',
                      price: '₹ 399',
                      title: 'Veggie Cheese Pizza',
                      desc:
                          'Creamy Feta Cheese and flavourful mushrooms, broccoli, spinach, bell peppers and corn topped on our perfectly charred sourdough pizza.',
                      cal: '304cal'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                  FoodColumn(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DisplayFood(
                                  img: 'assets/images/noodles1.jpg',
                                  price: '₹ 199',
                                  title: 'Spicy Chow Ramen',
                                  desc:
                                      'Slurp up a delicious hot bowl of ramen from the experts at Ramen Daddy. Using creamy chicken broth of Japanese French influences and fresh noodles.',
                                  cal: '190cal');
                            },
                          ),
                        );
                      },
                      img: 'assets/images/noodles1.jpg',
                      price: '₹ 199',
                      title: 'Spicy Chow Ramen',
                      desc:
                          'Slurp up a delicious hot bowl of ramen from the experts at Ramen Daddy. Using creamy chicken broth of Japanese French influences and fresh noodles.',
                      cal: '190cal'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                  FoodColumn(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DisplayFood(
                                  img: 'assets/images/taco1.jpg',
                                  price: '₹ 199',
                                  title: 'Mexican Chicken Taco',
                                  desc:
                                      'This Chicken Taco recipe is intended to be a QUICK recipe with a 2-in-1 chicken plus taco sauce so there is no need to make a separate sauce',
                                  cal: '200cal');
                            },
                          ),
                        );
                      },
                      img: 'assets/images/taco1.jpg',
                      price: '₹ 199',
                      title: 'Mexican Chicken Taco',
                      desc:
                          'This Chicken Taco recipe is intended to be a QUICK recipe with a 2-in-1 chicken plus taco sauce so there is no need to make a separate sauce',
                      cal: '200cal'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                  FoodColumn(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DisplayFood(
                                  img: 'assets/images/jamun1.jpg',
                                  price: '₹ 99',
                                  title: 'Jamun',
                                  desc:
                                      'For this classic dessert, fried dough balls made from milk solids and semolina are soaked in a syrup flavored with cardamom, rose water, saffron, and cloves.',
                                  cal: '200cal');
                            },
                          ),
                        );
                      },
                      img: 'assets/images/jamun1.jpg',
                      price: '₹ 99',
                      title: 'Jamun',
                      desc:
                          'For this classic dessert, fried dough balls made from milk solids and semolina are soaked in a syrup flavored with cardamom, rose water, saffron, and cloves.',
                      cal: '200cal'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                  FoodColumn(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DisplayFood(
                                  img: 'assets/images/cola2.jpg',
                                  price: '₹ 89',
                                  title: 'Pepsi Soft Drink-2.25L',
                                  desc:
                                      'Cold Pepsi Party Pack Soft Drink - 2.25L, Bottle',
                                  cal: '150cal');
                            },
                          ),
                        );
                      },
                      img: 'assets/images/cola2.jpg',
                      price: '₹ 89',
                      title: 'Pepsi Soft Drink-2.25L',
                      desc: 'Cold Pepsi Party Pack Soft Drink - 2.25L, Bottle',
                      cal: '150cal'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.active, required this.title});
  final String title;
  final bool active;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
