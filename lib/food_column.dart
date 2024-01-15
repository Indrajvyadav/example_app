import 'package:flutter/material.dart';
import 'package:example_app/constants.dart';

class FoodColumn extends StatelessWidget {
  const FoodColumn({
    super.key,
    required this.img,
    required this.price,
    required this.title,
    required this.desc,
    required this.cal,
    required this.press,
  });

  final String img;
  final String price;
  final String title;
  final String desc;
  final String cal;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        children: [
          Container(
            height: 400,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: kBlackColor.withOpacity(0.4),
              ),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(72, 238, 179, 199),
                  Color.fromARGB(121, 151, 43, 79),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: -10,
            left: -10,
            child: Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(57, 191, 16, 133),
                    Color.fromARGB(57, 172, 22, 135)
                  ])),
            ),
          ),
          Positioned(
            top: -6,
            left: -4,
            child: Container(
              height: 145,
              width: 195,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(img),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 200,
            left: 20,
            child: Text(
              'Price :',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 150,
            child: Text(
              price,
              style: const TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Positioned(
            bottom: 165,
            left: 30,
            child: Text(
              title,
              style: const TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 230,
              child: Text(
                desc,
                maxLines: 5,
                style: TextStyle(
                  color: kTextColor.withOpacity(0.6),
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 30,
            child: Text(
              cal,
              style: TextStyle(
                color: kTextColor.withOpacity(0.6),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
