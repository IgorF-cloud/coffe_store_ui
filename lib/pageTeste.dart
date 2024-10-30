import 'dart:ui';

import 'package:flutter/material.dart';

class PageTest extends StatefulWidget {
  const PageTest({super.key});

  @override
  State<PageTest> createState() => _PageTestState();
}

class _PageTestState extends State<PageTest> {
  double dragSize = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red, // Fundo vermelho
        child: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.red, // Quadrado verde de 100x100
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: dragSize >= 800 ? 0 : -50,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.white, // Quadrado verde de 100x100
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: double.infinity,
                height: dragSize,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            color: Colors.blue,
                            child: Center(child: Text('PRODUTO')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (dragSize == 500) {
                                    setState(() {
                                      dragSize = 800;
                                    });
                                  } else {
                                    setState(() {
                                      dragSize = 500;
                                    });
                                  }
                                });
                              },
                              child: const Text('Click')),
                        ),
                      ),
                    ],
                  ),
                ), // Quadrado verde de 100x100
              ),
            ],
          ),
        ),
      ),
    );
  }
}
