import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffePage extends StatefulWidget {
  const CoffePage({super.key});

  @override
  State<CoffePage> createState() => _CoffePageState();
}

class _CoffePageState extends State<CoffePage> {
  String sizeSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5))),
                backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(25, 29, 36, 1))),
            icon: const Icon(
              CupertinoIcons.back,
              size: 18,
              color: Colors.grey,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5))),
                  backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(25, 29, 36, 1))),
              icon: const Icon(
                Icons.favorite,
                size: 18,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.elliptical(50, 50), bottomRight: Radius.elliptical(50, 50)),
                    child: Image.asset('assets/img/coffe2.jpg', fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(40, 30)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                      child: Container(
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(40, 30), top: Radius.elliptical(40, 30)),
                            color: Colors.black26.withOpacity(0.5)),
                        height: 150,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cappuccino',
                                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'With Ota Milk',
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 4),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.5',
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '(6.986)',
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 11,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(25, 29, 36, 1),
                                        borderRadius: BorderRadius.circular(12.5),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.coffee,
                                            size: 18,
                                            color: Color.fromRGBO(209, 120, 66, 1),
                                          ),
                                          Text(
                                            'Coffee',
                                            style: TextStyle(fontSize: 10, color: Colors.white70, fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(25, 29, 36, 1),
                                        borderRadius: BorderRadius.circular(12.5),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.water_drop,
                                            size: 18,
                                            color: Color.fromRGBO(209, 120, 66, 1),
                                          ),
                                          Text(
                                            'Milk',
                                            style: TextStyle(fontSize: 10, color: Colors.white70, fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 110,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(25, 29, 36, 1),
                                    borderRadius: BorderRadius.circular(12.5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'medium Roasted',
                                      style: TextStyle(fontSize: 10, color: Colors.white70, fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 12, color: Colors.white70, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Size',
                      style: TextStyle(fontSize: 12, color: Colors.white70, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sizeSelected = 'S';
                            });
                          },
                          child: Container(
                            height: 36,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(25, 29, 36, 1),
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: sizeSelected == 'S' ? const Color.fromRGBO(209, 120, 66, 1) : Colors.transparent, width: 1.5)),
                            child: Center(
                              child: Text(
                                'S',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: sizeSelected == 'S' ? const Color.fromRGBO(209, 120, 66, 1) : Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sizeSelected = 'M';
                            });
                          },
                          child: Container(
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 29, 36, 1),
                              border: Border.all(color: sizeSelected == 'M' ? const Color.fromRGBO(209, 120, 66, 1) : Colors.transparent),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: sizeSelected == 'M' ? const Color.fromRGBO(209, 120, 66, 1) : Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              sizeSelected = 'L';
                            });
                          },
                          child: Container(
                            height: 36,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(25, 29, 36, 1),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: sizeSelected == 'L' ? const Color.fromRGBO(209, 120, 66, 1) : Colors.transparent)),
                            child: Center(
                              child: Text(
                                'L',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: sizeSelected == 'L' ? const Color.fromRGBO(209, 120, 66, 1) : Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Price',
                  style: TextStyle(fontSize: 12, color: Colors.white70, fontWeight: FontWeight.w400),
                ),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$ ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(209, 120, 66, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '4.20',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5))),
                  //backgroundColor: MaterialStatePropertyAll(Color(0xFFD17842))),
                  backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(209, 120, 66, 1)),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
