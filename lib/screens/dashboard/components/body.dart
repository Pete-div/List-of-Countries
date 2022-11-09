import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_country/screens/dashboard/components/button_widget.dart';

class Body extends GetView {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Explore',
                        style: const TextStyle(
                            fontFamily: 'Scoth-Brace-Demo.ttf',
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: const CircleAvatar(
                          radius: 2,
                          backgroundColor: Color.fromRGBO(255, 108, 0, 1),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.light_mode_outlined,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color.fromRGBO(242, 244, 247, 1),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
                    child: Icon(Icons.search),
                  ),
                  focusColor: Colors.transparent,
                  fillColor: Colors.transparent,
                  hintText: 'Search Country',
                  hintStyle: TextStyle(
                    fontFamily: 'FontsFree-Net-sddd4 (1)',
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Button(
                    text: 'EN',
                    icon: Icon(
                      Icons.language_outlined,
                      size: 19,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Button(
                    text: 'FILTER',
                    icon: Image.asset(
                      'assets/images/filter.png',
                      width: 19,
                      height: 17,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, bottom: 3),
              child: Container(
                height: 400,
                child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    itemBuilder: (ctx, i) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: const Text(
                                'A',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(102, 112, 133, 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/m4.jpg',
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Nigeria',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(28, 25, 23, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Capital',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                102, 112, 133, 1),
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
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
