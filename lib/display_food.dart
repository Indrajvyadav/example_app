import 'package:example_app/constants.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class DisplayFood extends StatelessWidget {
  const DisplayFood(
      {super.key,
      required this.img,
      required this.title,
      required this.desc,
      required this.price,
      required this.cal});

  final String img;
  final String title;
  final String desc;
  final String price;
  final String cal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 230),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                'assets/images/back.svg',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(90, 235, 111, 152),
                          Color.fromARGB(118, 194, 50, 98)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 5,
                    child: Container(
                      height: 240,
                      width: 310,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 520,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 50),
                    child: Text(
                      title,
                      maxLines: 4,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: kPrimaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 100),
                    child: Text(
                      desc,
                      maxLines: 4,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  // Icon Widget is used here
                  Positioned(
                    bottom: 60,
                    right: 20,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 219, 155, 176)),
                          iconColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 216, 69, 59))),
                      label: const Text('Add to Bag'),
                      icon: const Icon(Icons.shopping_bag),
                    ),
                  ),
                  const Positioned(
                    top: 220,
                    left: 20,
                    child: Text(
                      'Price :',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 220,
                    child: Text(
                      price,
                      style: const TextStyle(color: kBlackColor, fontSize: 22),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 290,
                    child: Text('Calorie :',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor)),
                  ),
                  Positioned(
                    left: 140,
                    top: 290,
                    child: Text(
                      cal,
                      style: const TextStyle(color: kBlackColor, fontSize: 22),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
